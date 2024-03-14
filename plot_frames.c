int smodule_ch[3][9] = { {0,1,2,3,4,5,6,7,8}, {9,10,11,12,13,14,15,16,17}, {18,19,20,21,22,23,24,25,26}   };

int LoadFrame(TString filename, int all_e[27], int all_t[27]){
    ifstream infile;
    infile.open(filename);
    if(!infile.is_open()){
       cout<<"Couldn't find file: "<<filename<<endl;
       return 0;
    }

    Ssiz_t from=0;
    TString content,tmp;
    int nn=0;

    while(tmp.ReadLine(infile)){
          tmp.Tokenize(content,from,"  ");
          int ee=atoi(content.Data());
          tmp.Tokenize(content,from,"  ");
          int tt=atoi(content.Data());

          all_e[nn] = ee;
          all_t[nn] = tt;

          from=0;
          nn++;
     }
    infile.close();
    return 1;

}

void plot_frames(){

     int nframe=4;

     TH2F *hT[nframe];

     TH2F *hT_tot = new TH2F("hT_tot","hT_tot",3,0,3,9,0,9);

     for(int ii=0; ii<nframe; ii++){
         TString filename = Form("data2/frame%d.txt",ii);
         int all_t[27]={0};
         int all_e[27]={0};
         int valid = LoadFrame(filename, all_e, all_t);

         hT[ii] = new TH2F(Form("hT%d",ii),Form("hT%d",ii),3,0,3,9,0,9);
         for(int jj=0; jj<27; jj++){
             //int yy = (jj+1)/12;
             //int xx = (jj+1)%12;

             int nsmo = jj/9;
             int nb = jj%9;

             int xx = nb%3;
             int yy = nb/3 + nsmo*3;

             if(all_e[jj]>0){
                hT[ii]->Fill(xx, yy, all_t[jj]*4+ii*32);
                hT_tot->Fill(xx, yy, all_e[jj]);
             }
         }

     }

     TCanvas *c1 = new TCanvas("c1");
     c1->Divide(3,2);
     for(int ii=0; ii<nframe; ii++){
        c1->cd(ii+1);
        hT[ii]->Draw("COLZ TEXT");
        gPad->SetGrid();
     }

     TCanvas *c2 = new TCanvas("c2");
     c2->SetGrid();
     hT_tot->Draw("COLZ TEXT");



}
