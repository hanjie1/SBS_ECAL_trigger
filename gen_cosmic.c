void loop_allblocks(){

    ofstream outfile_0("data/frame0.txt");
    for(int ii=0; ii<27; ii++){
        outfile_0<<0<<"  "<<0<<endl;
    }
    outfile_0.close();

    ofstream outfile[27];
    for(int ii=0; ii<27; ii++){
        outfile[ii].open(Form("data/frame%d.txt",ii+1));
        for(int jj=0; jj<27; jj++){
            if(jj==ii)
               outfile[ii]<<3000<<"  "<<5<<endl;
            else
               outfile[ii]<<0<<"  "<<0<<endl;
        } 
        outfile[ii].close();
    }

    ofstream outfile_28("data/frame28.txt");
    for(int ii=0; ii<27; ii++){
        outfile_28<<0<<"  "<<0<<endl;
    }
    outfile_28.close();

    return;
}



void gen_cosmic(){
     
     loop_allblocks();


}