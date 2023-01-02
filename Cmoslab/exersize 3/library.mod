.subckt nmos s g d b w=1u l=1u Vsigma=0 Ksigma=0
*.print tran v(g) v(g1)
Vtmoffset g g1 DC 'Vsigma*0.0082u/sqrt(w*l)'
Mtm1 s g1 d b nmos w='w*(1+Ksigma*0.002/sqrt(w*l))' l=l
.ends nmos

.subckt pmos s g d b w=1u l=1u Vsigma=0 Ksigma=0
Vtmoffset g g1 DC 'Vsigma*0.0149u/sqrt(w*l)'
Mtm1 s g1 d b pmos w='w*(1+Ksigma*0.004/sqrt(w*l))' l=l
.ends pmos

.subckt mosn s g d b w=1u l=1u Vsigma=0 Ksigma=0
Vtmoffset g g1 DC 'Vsigma*0.0082u/sqrt(w*l)'
Mtm1 s g1 d b nmos w='w*(1+Ksigma*0.002/sqrt(w*l))' l=l
.ends mosn

.subckt mosp s g d b w=1u l=1u Vsigma=0 Ksigma=0
Vtmoffset g g1 DC 'Vsigma*0.0149u/sqrt(w*l)'
Mtm1 s g1 d b pmos w='w*(1+Ksigma*0.004/sqrt(w*l))' l=l
.ends mosp

.subckt nemos s g d b w=1u l=1u Vsigma=0 Ksigma=0
Vtmoffset g g1 DC 'Vsigma*0.0082u/sqrt(w*l)'
Mtm1 s g1 d b nmos w='w*(1+Ksigma*0.002/sqrt(w*l))' l=l
.ends nemos

.subckt pemos s g d b w=1u l=1u Vsigma=0 Ksigma=0
Vtmoffset g g1 DC 'Vsigma*0.0149u/sqrt(w*l)'
Mtm1 s g1 d b pmos w='w*(1+Ksigma*0.004/sqrt(w*l))' l=l
.ends pemos

.MODEL nmos NMOS LEVEL=49
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : MOS BSIM3v3
* process   : C35
* revision : 3.1;
* extracted : B10866 ; 2002-12; ese(487)
* doc#      : ENG-182 REV_3
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+MOBMOD =1.000e+00 CAPMOD =2.000e+00
+NOIMOD =3.000e+00
+VERSION=3.1
*        *** Threshold voltage related model parameters ***
+K1     =5.030e-01
+K2     =3.399e-02 K3     =-1.136e+00 K3B    =-4.399e-01
+NCH    =2.611e+17 VTH0   =4.979e-01
+VOFF   =-8.925e-02 DVT0   =5.000e+01 DVT1   =1.039e+00
+DVT2   =-8.375e-03 KETA   =2.032e-02
+PSCBE1 =3.518e+08 PSCBE2 =7.491e-05
+DVT0W  =1.089e-01 DVT1W  =6.671e+04 DVT2W  =-1.352e-02
*        *** Mobility related model parameters ***
+UA     =4.705e-12 UB     =2.137e-18 UC     =1.000e-20
+U0     =4.758e+02
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =1.415e-02 ETAB   =-1.221e-01
+NFACTOR=4.136e-01
*        *** Saturation related parameters ***
+EM     =4.100e+07 PCLM   =6.948e-01
+PDIBLC1=3.571e-01 PDIBLC2=2.065e-03 DROUT  =5.000e-01
+A0     =2.541e+00 A1     =0.000e+00 A2     =1.000e+00
+PVAG   =0.000e+00 VSAT   =1.338e+05 AGS    =2.408e-01
+B0     =4.301e-09 B1     =0.000e+00 DELTA  =1.442e-02
+PDIBLCB=3.222e-01
*        *** Geometry modulation related parameters ***
+W0     =2.673e-07 DLC    =3.0000e-08
+DWC    =9.403e-08 DWB    =0.000e+00 DWG    =0.000e+00
+LL     =0.000e+00 LW     =0.000e+00 LWL    =0.000e+00
+LLN    =1.000e+00 LWN    =1.000e+00 WL     =0.000e+00
+WW     =-1.297e-14 WWL    =-9.411e-21 WLN    =1.000e+00
+WWN    =1.000e+00
*        *** Temperature effect parameters ***
+TNOM   =27.0 AT     =3.300e+04 UTE    =-1.800e+00
+KT1    =-3.302e-01 KT2    =2.200e-02 KT1L   =0.000e+00
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00
+PRT    =0.000e+00
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =1.200e-10 CGSO   =1.200e-10 CGBO   =1.100e-10
+CGDL   =1.310e-10 CGSL   =1.310e-10 CKAPPA =6.000e-01
+CF     =0.000e+00 ELM    =5.000e+00
+XPART  =1.000e+00 CLC    =1.000e-15 CLE    =6.000e-01
*        *** Parasitic resistance and capacitance related model parameters ***
+RDSW   =3.449e+02
+CDSC   =0.000e+00 CDSCB  =1.500e-03 CDSCD  =1.000e-03
+PRWB   =-2.416e-01 PRWG   =0.000e+00 CIT    =4.441e-04
*        *** Process and parameters extraction related model parameters ***
+TOX    =7.575e-09 NGATE  =0.000e+00
+NLX    =1.888e-07
*        *** Substrate current related model parameters ***
+ALPHA0 =0.000e+00 BETA0  =3.000e+01
*        *** Noise effect related model parameters ***
+AF     =1.507e+00 KF     =2.170e-26 EF     =1.000e+00
+NOIA   =1.121e+19 NOIB   =5.336e+04 NOIC   =-5.892e-13
*        *** Common extrinsic model parameters ***
+RD     =0.000e+00 RS     =0.000e+00 RSH    =7.000e+01
+LINT   =-5.005e-08  WINT   =9.403e-08
+XJ     =3.000e-07
+JS     =1.000e-05 JSW    =0.130e-09
+N      =1.000e+00
+CJ     =9.400e-04 CJSW   =2.500e-10
+MJ     =3.400e-01 MJSW   =2.300e-01 TT     =0.000e+00
+PB     =6.900e-01 PHP    =6.900e-01
* ----------------------------------------------------------------------
.MODEL MODNM NMOS LEVEL=49
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : MOS BSIM3v3
* process   : C35
* revision : 3.1;
* extracted : B11004 ; 2002-12; ese(487)
* doc#      : ENG-182 REV_3
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+MOBMOD =1.000e+00 CAPMOD =2.000e+00
+NOIMOD =3.000e+00
+VERSION=3.1
*        *** Threshold voltage related model parameters ***
+K1     =7.492e-01
+K2     =1.103e-01 K3     =-3.776e+00 K3B    =-7.691e-02
+NCH    =2.265e+17 VTH0   =7.525e-01
+VOFF   =-8.295e-02 DVT0   =3.000e+01 DVT1   =1.528e+00 
+DVT2   =2.529e-02 KETA   =3.585e-02 
+PSCBE1 =4.309e+08 PSCBE2 =1.000e-10
+DVT0W  =-5.000e+00 DVT1W  =2.578e+06 DVT2W  =5.105e-02 
*        *** Mobility related model parameters ***
+UA     =4.708e-10 UB     =1.470e-18 UC     =-4.342e-11 
+U0     =5.643e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =3.795e-02 ETAB   =-7.653e-04 
+NFACTOR=8.573e-01 
*        *** Saturation related parameters ***
+EM     =4.100e+07 PCLM   =2.125e-01
+PDIBLC1=1.000e-04 PDIBLC2=5.458e-04 DROUT  =5.000e-01 
+A0     =2.064e+00 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =0.000e+00 VSAT   =1.078e+05 AGS    =1.079e-01 
+B0     =-1.493e-07 B1     =0.000e+00 DELTA  =1.000e-02 
+PDIBLCB=5.186e-01 
*        *** Geometry modulation related parameters ***
+W0     =1.617e-07 DLC    =1.0000e-07 
+DWC    =1.623e-07 DWB    =0.000e+00 DWG    =0.000e+00 
+LL     =0.000e+00 LW     =0.000e+00 LWL    =0.000e+00
+LLN    =1.000e+00 LWN    =1.000e+00 WL     =0.000e+00 
+WW     =-5.117e-14 WWL    =-5.704e-21 WLN    =1.000e+00 
+WWN    =1.000e+00 
*        *** Temperature effect parameters ***
+TNOM   =27.0 AT     =3.300e+04 UTE    =-1.760e+00 
+KT1    =-4.502e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
+PRT    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =1.080e-10 CGSO   =1.080e-10 CGBO   =1.100e-10 
+CGDL   =2.270e-10 CGSL   =2.270e-10 CKAPPA =6.000e-01 
+CF     =0.000e+00 ELM    =5.000e+00 
+XPART  =1.000e+00 CLC    =1.000e-15 CLE    =6.000e-01 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDSW   =1.390e+03 
+CDSC   =0.000e+00 CDSCB  =-1.500e-03 CDSCD  =0.000e+00 
+PRWB   =-6.740e-02 PRWG   =0.000e+00 CIT    =0.000e+00 
*        *** Process and parameters extraction related model parameters ***
+TOX    =1.516e-08 NGATE  =0.000e+00 
+NLX    =2.283e-07 
*        *** Substrate current related model parameters ***
+ALPHA0 =0.000e+00 BETA0  =3.000e+01 
*        *** Noise effect related model parameters ***
+AF     =1.629e+00 KF     =9.180e-26 EF     =1.000e+00 
+NOIA   =2.245e+19 NOIB   =1.168e+05 NOIC   =-1.680e-12 
*        *** Common extrinsic model parameters ***
+RD     =0.000e+00 RS     =0.000e+00 RSH    =7.900e+01
+LINT   =1.225e-07  WINT   =1.623e-07
+XJ     =3.000e-07
+JS     =1.000e-05 JSW    =0.130e-09 
+N      =1.000e+00 CJ     =9.400e-04 CJSW   =2.500e-10
+MJ     =3.400e-01 MJSW   =2.300e-01 TT     =0.000e+00
+PB     =6.900e-01 PHP    =6.900e-01
* ----------------------------------------------------------------------
.MODEL MODPM PMOS LEVEL=49
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : MOS BSIM3v3
* process   : C35
* revision : 3.1;
* extracted : C64685 ; 2002-12; ese(487)
* doc#      : ENG-182 REV_3
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+MOBMOD =1.000e+00 CAPMOD =2.000e+00 
+NOIMOD =3.000e+00 
+VERSION=3.1      
*        *** Threshold voltage related model parameters ***
+K1     =5.491e-01 
+K2     =4.640e-02 K3     =8.317e+00 K3B    =-1.479e+00 
+NCH    =8.479e+16 VTH0   =-1.011e+00 
+VOFF   =-1.148e-01 DVT0   =5.399e-01 DVT1   =4.112e-01 
+DVT2   =-9.479e-02 KETA   =3.010e-02 
+PSCBE1 =5.000e+09 PSCBE2 =1.000e-10 
+DVT0W  =8.099e-01 DVT1W  =1.480e+05 DVT2W  =4.404e-02 
*        *** Mobility related model parameters ***
+UA     =1.800e-12 UB     =2.218e-18 UC     =-7.278e-11 
+U0     =1.373e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =9.736e-02 ETAB   =-2.948e-02 
+NFACTOR=7.046e-01 
*        *** Saturation related parameters ***
+EM     =4.100e+07 PCLM   =4.395e+00 
+PDIBLC1=2.037e-02 PDIBLC2=1.000e-20 DROUT  =5.000e-01 
+A0     =1.386e+00 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =0.000e+00 VSAT   =1.436e+05 AGS    =1.364e-01 
+B0     =1.991e-08 B1     =0.000e+00 DELTA  =1.000e-02
+PDIBLCB=1.000e+00 
*        *** Geometry modulation related parameters ***
+W0     =1.000e-10 DLC    =2.5000e-08 
+DWC    =6.203e-08 DWB    =0.000e+00 DWG    =0.000e+00 
+LL     =0.000e+00 LW     =0.000e+00 LWL    =0.000e+00 
+LLN    =1.000e+00 LWN    =1.000e+00 WL     =0.000e+00 
+WW     =-9.750e-16 WWL    =-1.787e-21 WLN    =1.000e+00 
+WWN    =1.040e+00 
*        *** Temperature effect parameters ***
+TNOM   =27.0 AT     =3.300e+04 UTE    =-1.300e+00 
+KT1    =-6.003e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
+PRT    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =9.100e-11 CGSO   =9.100e-11 CGBO   =1.100e-10 
+CGDL   =0.600e-10 CGSL   =0.600e-10 CKAPPA =6.000e-01 
+CF     =0.000e+00 ELM    =5.000e+00 
+XPART  =1.000e+00 CLC    =1.000e-15 CLE    =6.000e-01 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDSW   =1.623e+03 
+CDSC   =1.214e-03 CDSCB  =2.945e-04 CDSCD  =0.000e+00 
+PRWB   =-4.521e-01 PRWG   =0.000e+00 CIT    =5.259e-05 
*        *** Process and parameters extraction related model parameters ***
+TOX    =1.450e-08 NGATE  =0.000e+00 
+NLX    =2.231e-07 
*        *** Substrate current related model parameters ***
+ALPHA0 =0.000e+00 BETA0  =3.000e+01 
*        *** Noise effect related model parameters ***
+AF     =1.638e+00 KF     =3.625e-26 EF     =1.000e+00 
+NOIA   =5.846e+17 NOIB   =6.623e+03 NOIC   =7.759e-13 
*        *** Common extrinsic model parameters ***
+RD     =0.000e+00 RS     =0.000e+00 RSH    =1.300e+02 
+LINT   =-8.504e-08  WINT   =6.203e-08 
+XJ     =3.000e-07 
+JS     =9.000e-05 JSW    =0.610e-09 
+N      =1.000e+00 CJ     =1.360e-03 CJSW   =3.200e-10 
+MJ     =5.600e-01 MJSW   =4.300e-01 TT     =0.000e+00 
+PB     =1.020e+00 PHP    =1.020e+00 
* ----------------------------------------------------------------------
.MODEL pmos PMOS LEVEL=49 
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : MOS BSIM3v3
* process   : C35
* revision : 3.1; 
* extracted : C64685 ; 2002-12; ese(487)
* doc#      : ENG-182 REV_3
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+MOBMOD =1.000e+00 CAPMOD =2.000e+00 
+NOIMOD =3.000e+00 
+VERSION=3.1      
*        *** Threshold voltage related model parameters ***
+K1     =5.996e-01
+K2     =-6.04e-02 K3     =1.103e+01 K3B    =-7.580e-01 
+NCH    =9.240e+16 VTH0   =-6.915e-01 
+VOFF   =-1.170e-01 DVT0   =1.650e+00 DVT1   =3.868e-01 
+DVT2   =1.659e-02 KETA   =-1.440e-02 
+PSCBE1 =5.000e+09 PSCBE2 =1.000e-04 
+DVT0W  =1.879e-01 DVT1W  =7.335e+04 DVT2W  =-6.312e-03 
*        *** Mobility related model parameters ***
+UA     =5.394e-10 UB     =1.053e-18 UC     =1.000e-20 
+U0     =1.482e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =2.480e-01 ETAB   =-3.917e-03 
+NFACTOR=1.214e+00 
*        *** Saturation related parameters ***
+EM     =4.100e+07 PCLM   =3.184e+00 
+PDIBLC1=1.000e-04 PDIBLC2=1.000e-20 DROUT  =5.000e-01 
+A0     =5.850e-01 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =0.000e+00 VSAT   =1.158e+05 AGS    =2.468e-01 
+B0     =8.832e-08 B1     =0.000e+00 DELTA  =1.000e-02 
+PDIBLCB=1.000e+00 
*        *** Geometry modulation related parameters ***
+W0     =1.000e-10 DLC    =2.4500e-08 
+DWC    =3.449e-08 DWB    =0.000e+00 DWG    =0.000e+00 
+LL     =0.000e+00 LW     =0.000e+00 LWL    =0.000e+00 
+LLN    =1.000e+00 LWN    =1.000e+00 WL     =0.000e+00 
+WW     =1.894e-16 WWL    =-1.981e-21 WLN    =1.000e+00 
+WWN    =1.040e+00 
*        *** Temperature effect parameters ***
+TNOM   =27.0 AT     =3.300e+04 UTE    =-1.300e+00 
+KT1    =-5.403e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
+PRT    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =8.600e-11 CGSO   =8.600e-11 CGBO   =1.100e-10 
+CGDL   =1.080e-10 CGSL   =1.080e-10 CKAPPA =6.000e-01 
+CF     =0.000e+00 ELM    =5.000e+00 
+XPART  =1.000e+00 CLC    =1.000e-15 CLE    =6.000e-01
*        *** Parasitic resistance and capacitance related model parameters ***
+RDSW   =1.033e+03 
+CDSC   =2.589e-03 CDSCB  =2.943e-04 CDSCD  =4.370e-04 
+PRWB   =-9.731e-02 PRWG   =1.477e-01 CIT    =0.000e+00 
*        *** Process and parameters extraction related model parameters ***
+TOX    =7.754e-09 NGATE  =0.000e+00 
+NLX    =1.770e-07 
*        *** Substrate current related model parameters ***
+ALPHA0 =0.000e+00 BETA0  =3.000e+01 
*        *** Noise effect related model parameters ***
+AF     =1.461e+00 KF     =1.191e-26 EF     =1.000e+00 
+NOIA   =5.245e+17 NOIB   =4.816e+03 NOIC   =8.036e-13 
*        *** Common extrinsic model parameters ***
+RD     =0.000e+00 RS     =0.000e+00 RSH    =1.290e+02 
+LINT   =-7.130e-08  WINT   =3.449e-08 
+XJ     =3.000e-07 
+JS     =9.000e-05 JSW    =0.610e-09
+N      =1.000e+00 CJ     =1.360e-03 CJSW   =3.200e-10 
+MJ     =5.600e-01 MJSW   =4.300e-01 TT     =0.000e+00 
+PB     =1.020e+00 PHP    =1.020e+00 
* ----------------------------------------------------------------------
.SUBCKT ND A C AREA=1e-12 PJ=4e-6
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : DIODE
* process   : C35
* revision : 3.1; 
* extracted : B10866 ; 2002-12; ese(487)
* doc#      : ENG-182 REV_3
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
* TERMINALS: A=anode=P-region C=cathode=N-region
* VARIABLES: M (mulitiplier), AREA [m^2], PERI [m].
* NOTE: The role of a protection DIODE is to conduct ESD current to VDD 
* (or from VSS). This forward bias is NOT modelled, only leakage current 
* and capacitance during normal operation. Any inductive load etc that 
* will give forward bias, must be limited by other components to within 
* Operating Conditions, otherwise parasitic bipolar action can occur.
*
D1 A C NDINSUB AREA=AREA PJ=PJ
.ENDS ND
*
.MODEL NDINSUB D LEVEL=1
+IS     =1.000e-05 JSW    =0.130e-09 N      =1.000e+00 
+CJ     =9.400e-04 M      =3.400e-01 VJ     =6.900e-01 TT     =0.000e+00 
+CJSW   =2.500e-10 MJSW   =2.300e-01 FC     =0.500e+00 
+EG     =1.110e+00 XTI    =3.000e+00 AF     =1.000e+00 KF     =0.000e+00
* ----------------------------------------------------------------------
.SUBCKT PD A C AREA=1e-12 PJ=4e-6
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : DIODE
* process   : C35
* revision : 3.1;
* extracted : C64685 ; 2002-12; ese(487)
* doc#      : ENG-182 REV_3
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
* TERMINALS: A=anode=P-region C=cathode=N-region
* VARIABLES: M (mulitiplier), AREA [m^2], PERI [m].
* NOTE: The role of a protection DIODE is to conduct ESD current to VDD 
* (or from VSS). This forward bias is NOT modelled, only leakage current 
* and capacitance during normal operation. Any inductive load etc that 
* will give forward bias, must be limited by other components to within 
* Operating Conditions, otherwise parasitic bipolar action can occur.
*
D1 A C PDINSUB AREA=AREA PJ=PJ
.ENDS PD
*
.MODEL PDINSUB D LEVEL=1
+IS     =9.000e-05 JSW    =0.610e-09 N      =1.000e+00 
+CJ     =1.360e-03 M      =5.600e-01 VJ     =1.020e+00 TT     =0.000e+00 
+CJSW   =3.200e-10 MJSW   =4.300e-01 FC     =0.500e+00 
+EG     =1.110e+00 XTI    =3.000e+00 AF     =1.000e+00 KF     =0.000e+00
* ----------------------------------------------------------------------
.SUBCKT MODNH D G S B W=1e-6 L=1e-6 AD=0 AS=0 PD=0 PS=0 NRD=0 NRS=0
* VARIABLES: W,L,AD,AS,PD,PS,NRD,NRS = standard MOSFET parameters
*
M1 D1 G S B MODNHINSUB W=W L=L AD=AD AS=AS PD=PD PS=PS NRD=NRD NRS=NRS
RD D1 D '1.328e+03*4.000e-06/(W)' 6.200e-03  
.ENDS MODNH
.MODEL MODNHINSUB NMOS LEVEL=49 
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : MOS BSIM3v3
* process   : C35
* revision : 3.0;
* extracted : C35 B11004.L2; 2002-11; hhl(5481)
* doc#      : REV_3.0
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+MOBMOD =1.000e+00 CAPMOD =2.000e+00 
+NOIMOD =1.000e+00 
+VERSION=3.1      
*        *** Threshold voltage related model parameters ***
+K1     =6.270e-01 
+K2     =-4.97e-03 K3     =-2.240e+00 K3B    =6.954e-01 
+NCH    =2.236e+17 VTH0   =4.460e-01
+VOFF   =-5.090e-02 DVT0   =4.985e+01 DVT1   =1.296e+00 
+DVT2   =1.311e-02 KETA   =-4.553e-02 
+PSCBE1 =1.000e+10 PSCBE2 =1.024e-05 
+DVT0W  =0.000e+00 DVT1W  =0.000e+00 DVT2W  =0.000e+00 
*        *** Mobility related model parameters ***
+UA     =1.000e-30 UB     =1.949e-18 UC     =1.217e-10 
+U0     =3.427e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =3.075e-02 ETAB   =-5.261e-02 
+NFACTOR=2.034e-01 
*        *** Saturation related parameters ***
+EM     =4.100e+07 PCLM   =2.940e-01 
+PDIBLC1=3.090e-02 PDIBLC2=6.375e-04 DROUT  =5.000e-01 
+A0     =1.893e-01 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =0.000e+00 VSAT   =2.402e+05 AGS    =1.245e-01 
+B0     =6.790e-08 B1     =0.000e+00 DELTA  =1.729e-02 
+PDIBLCB=2.067e-01 
*        *** Geometry modulation related parameters ***
+W0     =1.145e-07 DLC    =6.000e-07 
+DWC    =2.605e-08 DWB    =0.000e+00 DWG    =0.000e+00 
+LL     =0.000e+00 LW     =0.000e+00 LWL    =0.000e+00 
+LLN    =1.000e+00 LWN    =1.000e+00 WL     =0.000e+00 
+WW     =0.000e+00 WWL    =0.000e+00 WLN    =1.000e+00 
+WWN    =1.000e+00 
*        *** Temperature effect parameters ***
+TNOM   =2.700e+01 AT     =3.300e+04 UTE    =-1.800e+00 
+KT1    =-3.302e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
+PRT    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =1.200e-10 CGSO   =1.200e-10 CGBO   =1.100e-10 
+CGDL   =0.000e+00 CGSL   =0.000e+00 CKAPPA =6.000e-01 
+CF     =0.000e+00 ELM    =5.000e+00 
+XPART  =1.000e+00 CLC    =1.000e-15 CLE    =6.000e-01 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDSW   =1.092e+03
+CDSC   =7.944e-03 CDSCB  =0.000e+00 CDSCD  =8.448e-05 
+PRWB   =0.000e+00 PRWG   =0.000e+00 CIT    =1.000e-03 
*        *** Process and parameters extraction related model parameters ***
+TOX    =7.700e-09 NGATE  =0.000e+00 
+NLX    =1.132e-07 
*        *** Substrate current related model parameters ***
+ALPHA0 =0.000e+00 BETA0  =3.000e+01 
*        *** Noise effect related model parameters ***
+AF     =1.400e+00 KF     =2.810e-27 EF     =1.000e+00 
+NOIA   =1.000e+20 NOIB   =5.000e+04 NOIC   =-1.400e-12 
*        *** Common extrinsic model parameters ***
+RD     =0.000e+00 RS     =0.000e+00 RSH    =8.200e+01
+LINT   =6.000e-07  WINT   =2.605e-08 
+XJ     =3.000e-07 
+JS     =6.000e-05 JSW    =0.130e-09
+N      =1.000e+00 
+CJ     =8.000e-05 CJSW   =5.100e-10 
+MJ     =3.900e-01 MJSW   =2.700e-01 TT     =0.000e+00 
+PB     =5.300e-01 PHP    =6.900e-01 
* ----------------------------------------------------------------------
.SUBCKT MODNMH D G S B W=1e-6 L=1e-6 AD=0 AS=0 PD=0 PS=0 NRD=0 NRS=0
* VARIABLES: W,L,AD,AS,PD,PS,NRD,NRS = standard MOSFET parameters
*
M1 D1 G S B MODNMHINSUB W=W L=L AD=AD AS=AS PD=PD PS=PS NRD=NRD NRS=NRS
RD D1 D '1.547e+03*4.000e-06/(W)' 6.200e-03  
.ENDS MODNMH
.MODEL MODNMHINSUB NMOS LEVEL=49 
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : SMARTSPICE
* model     : MOS BSIM3v3
* process   : C35
* revision : 3.0; 
* extracted : C35 B11004.L2; 2002-11; hhl(5481)
* doc#      : REV_3.0
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+MOBMOD =1.000e+00 CAPMOD =2.000e+00 
+NOIMOD =1.000e+00 
+VERSION=3.1      
*        *** Threshold voltage related model parameters ***
+K1     =9.541e-01
+K2     =4.910e-02 K3     =-2.439e+00 K3B    =4.077e-01 
+NCH    =2.092e+17 VTH0   =6.449e-01 
+VOFF   =-4.948e-02 DVT0   =4.985e+01 DVT1   =1.683e+00 
+DVT2   =4.126e-02 KETA   =-7.397e-02 
+PSCBE1 =4.000e+10 PSCBE2 =1.000e-10 
+DVT0W  =0.000e+00 DVT1W  =0.000e+00 DVT2W  =0.000e+00 
*        *** Mobility related model parameters ***
+UA     =1.000e-12 UB     =3.768e-19 UC     =6.391e-12 
+U0     =4.394e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =1.616e-03 ETAB   =-1.373e-02 
+NFACTOR=3.455e-01 
*        *** Saturation related parameters ***
+EM     =4.100e+07 PCLM   =1.055e-01
+PDIBLC1=1.000e-10 PDIBLC2=1.000e-10 DROUT  =5.000e-01 
+A0     =2.190e-01 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =0.000e+00 VSAT   =5.129e+04 AGS    =9.448e-02 
+B0     =-3.629e-08 B1     =0.000e+00 DELTA  =3.370e-03 
+PDIBLCB=3.872e-01 
*        *** Geometry modulation related parameters ***
+W0     =6.289e-08 DLC    =8.917e-08 
+DWC    =4.938e-08 DWB    =0.000e+00 DWG    =0.000e+00 
+LL     =0.000e+00 LW     =0.000e+00 LWL    =0.000e+00 
+LLN    =1.000e+00 LWN    =1.000e+00 WL     =0.000e+00 
+WW     =0.000e+00 WWL    =0.000e+00 WLN    =1.000e+00 
+WWN    =1.000e+00 
*        *** Temperature effect parameters ***
+TNOM   =2.700e+01 AT     =3.300e+04 UTE    =-1.760e+00 
+KT1    =-4.502e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
+PRT    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =1.080e-10 CGSO   =1.080e-10 CGBO   =1.100e-10 
+CGDL   =0.000e+00 CGSL   =0.000e+00 CKAPPA =6.000e-01 
+CF     =0.000e+00 ELM    =5.000e+00 
+XPART  =1.000e+00 CLC    =1.000e-15 CLE    =6.000e-01 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDSW   =5.304e+02 
+CDSC   =1.000e-02 CDSCB  =0.000e+00 CDSCD  =8.448e-05 
+PRWB   =0.000e+00 PRWG   =0.000e+00 CIT    =8.122e-04 
*        *** Process and parameters extraction related model parameters ***
+TOX    =1.514e-08 NGATE  =0.000e+00 
+NLX    =1.593e-07 
*        *** Substrate current related model parameters ***
+ALPHA0 =0.000e+00 BETA0  =3.000e+01 
*        *** Noise effect related model parameters ***
+AF     =1.400e+00 KF     =2.810e-27 EF     =1.000e+00 
+NOIA   =1.000e+20 NOIB   =5.000e+04 NOIC   =-1.400e-12 
*        *** Common extrinsic model parameters ***
+RD     =0.000e+00 RS     =0.000e+00 RSH    =7.946e+01 
+LINT   =8.917e-08  WINT   =4.938e-08 
+XJ     =3.000e-07 
+JS     =6.000e-05 JSW    =0.130e-09
+N      =1.000e+00 CJ     =8.000e-05 CJSW   =5.100e-10 
+MJ     =3.900e-01 MJSW   =2.700e-01 TT     =0.000e+00 
+PB     =5.300e-01 PHP    =6.900e-01 
* ----------------------------------------------------------------------
* Owner: austriamicrosystems
* HIT-Kit: Digital
