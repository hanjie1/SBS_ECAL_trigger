// number of super modules per row
const int nsmo_crate[7][4]={ {4,6,7,7},{8,8,9,0},{9,9,9,0},{9,9,9,0},{9,9,9,0},{9,9,8,0},{8,7,7,6} };

void gen_detmap(){

     int ncrate;
     cout<<"which crate? (0-6)  ";
     cin>>ncrate;

     int nsmo[4];
     copy(nsmo_crate[ncrate],nsmo_crate[ncrate]+4,nsmo);
 
     for(int ii=0; ii<4; ii++)
        cout<<nsmo[ii]<<endl;
    
     cout<<"{ ";
     int nnsmo = 1;
     int nnrow = 1;
     int nncol = 1;
     int NSMO = 1;
     for(int ii=0; ii<4; ii++){
         int NCOL = nsmo[ii]*3;
         if(ii>0) NSMO = NSMO + nsmo[ii-1]; 
         for(int jj=0; jj<3; jj++){
           nnrow = ii*3 + jj + 1;
           for(int nn=0; nn<NCOL; nn++){
             nncol = nn+1; 
             nnsmo = nn/3+NSMO;
             printf("{%d,%d,%d},",nnrow,nncol,nnsmo);
           }
         }
     }
     
     cout<<"};"<<endl;

}
