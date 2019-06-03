#include <stdio.h>
#include <stdlib.h>
#define NL 16

void cal_amat(int n,int ne,int kd,const int* restrict cny,const int* restrict num,const float* restrict coor,const float* restrict younglst,const float* const restrict u,float* restrict r){
  /* calculate r = K u by element-by-element method */
  int i,ie,in,cny1,cny2,cny3,cny4,ieo;
  float xl21[NL],xl22[NL],xl23[NL],xl31[NL],xl32[NL],xl33[NL];
  float xl41[NL],xl42[NL],xl43[NL];
  float ue11[NL],ue21[NL],ue31[NL],ue12[NL],ue22[NL],ue32[NL];
  float ue13[NL],ue23[NL],ue33[NL],ue14[NL],ue24[NL],ue34[NL];
  float young[NL],rnyu[NL],detj[NL],detjt[NL],d1[NL],d2[NL],d3[NL];
  float ij11[NL],ij12[NL],ij13[NL],ij21[NL],ij22[NL],ij23[NL],ij31[NL],ij32[NL],ij33[NL];
  float bmc1[NL],bmc2[NL],bmc3[NL],bu1[NL],bu2[NL],bu3[NL],bu4[NL],bu5[NL],bu6[NL];
  float dbu1[NL],dbu2[NL],dbu3[NL],dbu4[NL],dbu5[NL],dbu6[NL];
  float bdbu11[NL],bdbu21[NL],bdbu31[NL];
  float bdbu12[NL],bdbu22[NL],bdbu32[NL];
  float bdbu13[NL],bdbu23[NL],bdbu33[NL];
  float bdbu14[NL],bdbu24[NL],bdbu34[NL];

  asm volatile("# clear left hand side vector");
  for( i=0; i < n; ++i )
    r[i]=0.0F;

  if(ne%NL!=0){
    printf("ne cannot be divided by %d\n",ne);
    exit(0);
  }

  for( ieo = 0; ieo < ne; ieo += NL){
    asm volatile("# load right hand side vector ");
    for( ie = 0; ie < NL; ++ie){
      cny1=cny[4*(ieo+ie)];
      cny2=cny[4*(ieo+ie)+1];
      cny3=cny[4*(ieo+ie)+2];
      cny4=cny[4*(ieo+ie)+3];
      ue11[ie]=u[3*cny1];
      ue21[ie]=u[3*cny1+1];
      ue31[ie]=u[3*cny1+2];
      ue12[ie]=u[3*cny2];
      ue22[ie]=u[3*cny2+1];
      ue32[ie]=u[3*cny2+2];
      ue13[ie]=u[3*cny3];
      ue23[ie]=u[3*cny3+1];
      ue33[ie]=u[3*cny3+2];
      ue14[ie]=u[3*cny4];
      ue24[ie]=u[3*cny4+1];
      ue34[ie]=u[3*cny4+2];

      /* compute components of B */
      xl21[ie]=coor[3*cny2]-coor[3*cny1];
      xl22[ie]=coor[3*cny2+1]-coor[3*cny1+1];
      xl23[ie]=coor[3*cny2+2]-coor[3*cny1+2];
      xl31[ie]=coor[3*cny3]-coor[3*cny1];
      xl32[ie]=coor[3*cny3+1]-coor[3*cny1+1];
      xl33[ie]=coor[3*cny3+2]-coor[3*cny1+2];
      xl41[ie]=coor[3*cny4]-coor[3*cny1];
      xl42[ie]=coor[3*cny4+1]-coor[3*cny1+1];
      xl43[ie]=coor[3*cny4+2]-coor[3*cny1+2];

      /* compute components of D */
      in=num[ie];
      young[ie]=younglst[2*in];
      rnyu[ie]=younglst[2*in+1];
    }
    asm volatile("# compute determinant and BDBu");
    for( ie = 0; ie < NL; ++ie){
      ij11[ie]=-(xl33[ie]*xl42[ie])+xl32[ie]*xl43[ie];
      ij12[ie]=xl23[ie]*xl42[ie]-xl22[ie]*xl43[ie];
      ij13[ie]=-(xl23[ie]*xl32[ie])+xl22[ie]*xl33[ie];
      ij21[ie]=xl33[ie]*xl41[ie]-xl31[ie]*xl43[ie];
      ij22[ie]=-(xl23[ie]*xl41[ie])+xl21[ie]*xl43[ie];
      ij23[ie]=xl23[ie]*xl31[ie]-xl21[ie]*xl33[ie];
      ij31[ie]=-(xl32[ie]*xl41[ie])+xl31[ie]*xl42[ie];
      ij32[ie]=xl22[ie]*xl41[ie]-xl21[ie]*xl42[ie];
      ij33[ie]=-(xl22[ie]*xl31[ie])+xl21[ie]*xl32[ie];
      
      bmc1[ie]=-(ij11[ie]+ij12[ie]+ij13[ie]);
      bmc2[ie]=-(ij21[ie]+ij22[ie]+ij23[ie]);
      bmc3[ie]=-(ij31[ie]+ij32[ie]+ij33[ie]);

      d1[ie]=((1.0F-rnyu[ie])*young[ie])/((1.0F-2.0F*rnyu[ie])*(1.0F+rnyu[ie]));
      d2[ie]=d1[ie]*rnyu[ie]/(1.0F-rnyu[ie]);
      d3[ie]=young[ie]/(2.0F*(1.0F+rnyu[ie]));

      /* compute determinant */
      detj[ie]=-(xl23[ie]*xl32[ie]*xl41[ie])+xl22[ie]*xl33[ie]*xl41[ie]+xl23[ie]*xl31[ie]*xl42[ie]-xl21[ie]*xl33[ie]*xl42[ie]-xl22[ie]*xl31[ie]*xl43[ie]+xl21[ie]*xl32[ie]*xl43[ie];
      detjt[ie]=1.0F/detj[ie]*0.16666666666666667F;

      /* compute Bu */
      bu1[ie]=bmc1[ie]*ue11[ie] + ij11[ie]*ue12[ie] + ij12[ie]*ue13[ie] + ij13[ie]*ue14[ie];
      bu2[ie]=bmc2[ie]*ue21[ie] + ij21[ie]*ue22[ie] + ij22[ie]*ue23[ie] + ij23[ie]*ue24[ie];
      bu3[ie]=bmc3[ie]*ue31[ie] + ij31[ie]*ue32[ie] + ij32[ie]*ue33[ie] + ij33[ie]*ue34[ie];
      bu4[ie]=bmc2[ie]*ue11[ie] + bmc1[ie]*ue21[ie] + ij21[ie]*ue12[ie] + ij11[ie]*ue22[ie] + ij22[ie]*ue13[ie] + ij12[ie]*ue23[ie] + ij23[ie]*ue14[ie] + ij13[ie]*ue24[ie];
      bu5[ie]=bmc3[ie]*ue21[ie] + bmc2[ie]*ue31[ie] + ij31[ie]*ue22[ie] + ij21[ie]*ue32[ie] + ij32[ie]*ue23[ie] + ij22[ie]*ue33[ie] + ij33[ie]*ue24[ie] + ij23[ie]*ue34[ie];
      bu6[ie]=bmc3[ie]*ue11[ie] + bmc1[ie]*ue31[ie] + ij31[ie]*ue12[ie] + ij11[ie]*ue32[ie] + ij32[ie]*ue13[ie] + ij12[ie]*ue33[ie] + ij33[ie]*ue14[ie] + ij13[ie]*ue34[ie];

      /* compute DBu */
      dbu1[ie]=(d1[ie]*bu1[ie] + d2[ie]*(bu2[ie] + bu3[ie]))*detjt[ie];
      dbu2[ie]=(d1[ie]*bu2[ie] + d2[ie]*(bu1[ie] + bu3[ie]))*detjt[ie];
      dbu3[ie]=(d2[ie]*(bu1[ie] + bu2[ie]) + d1[ie]*bu3[ie])*detjt[ie];
      dbu4[ie]=bu4[ie]*d3[ie]*detjt[ie];
      dbu5[ie]=bu5[ie]*d3[ie]*detjt[ie];
      dbu6[ie]=bu6[ie]*d3[ie]*detjt[ie];

      /* compute BDBu */
      bdbu11[ie]=bmc1[ie]*dbu1[ie] + bmc2[ie]*dbu4[ie] + bmc3[ie]*dbu6[ie];
      bdbu21[ie]=bmc2[ie]*dbu2[ie] + bmc1[ie]*dbu4[ie] + bmc3[ie]*dbu5[ie];
      bdbu31[ie]=bmc3[ie]*dbu3[ie] + bmc2[ie]*dbu5[ie] + bmc1[ie]*dbu6[ie];
      bdbu12[ie]=ij11[ie]*dbu1[ie] + ij21[ie]*dbu4[ie] + ij31[ie]*dbu6[ie];
      bdbu22[ie]=ij21[ie]*dbu2[ie] + ij11[ie]*dbu4[ie] + ij31[ie]*dbu5[ie];
      bdbu32[ie]=ij31[ie]*dbu3[ie] + ij21[ie]*dbu5[ie] + ij11[ie]*dbu6[ie];
      bdbu13[ie]=ij12[ie]*dbu1[ie] + ij22[ie]*dbu4[ie] + ij32[ie]*dbu6[ie];
      bdbu23[ie]=ij22[ie]*dbu2[ie] + ij12[ie]*dbu4[ie] + ij32[ie]*dbu5[ie];
      bdbu33[ie]=ij32[ie]*dbu3[ie] + ij22[ie]*dbu5[ie] + ij12[ie]*dbu6[ie];
      bdbu14[ie]=ij13[ie]*dbu1[ie] + ij23[ie]*dbu4[ie] + ij33[ie]*dbu6[ie];
      bdbu24[ie]=ij23[ie]*dbu2[ie] + ij13[ie]*dbu4[ie] + ij33[ie]*dbu5[ie];
      bdbu34[ie]=ij33[ie]*dbu3[ie] + ij23[ie]*dbu5[ie] + ij13[ie]*dbu6[ie];
    }
    asm volatile("# add BDBu into left side vector");
    for( ie = 0; ie < NL; ++ie){
      cny1=cny[4*(ieo+ie)];
      cny2=cny[4*(ieo+ie)+1];
      cny3=cny[4*(ieo+ie)+2];
      cny4=cny[4*(ieo+ie)+3];
      /* add BDBu into left side vector */
      r[3 * cny1] += bdbu11[ie];
      r[3 * cny1 + 1] += bdbu21[ie];
      r[3 * cny1 + 2] += bdbu31[ie];
      r[3 * cny2] += bdbu12[ie];
      r[3 * cny2 + 1] += bdbu22[ie];
      r[3 * cny2 + 2] += bdbu32[ie];
      r[3 * cny3] += bdbu13[ie];
      r[3 * cny3 + 1] += bdbu23[ie];
      r[3 * cny3 + 2] += bdbu33[ie];
      r[3 * cny4] += bdbu14[ie];
      r[3 * cny4 + 1] += bdbu24[ie];
      r[3 * cny4 + 2] += bdbu34[ie];
    }
  }
}
