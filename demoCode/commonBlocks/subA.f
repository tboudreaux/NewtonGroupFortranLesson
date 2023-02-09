       SUBROUTINE SUBA
        IMPLICIT NONE

        CHARACTER(1) :: ASA, ASB, ASC
        INTEGER :: MA, MB, MC

        COMMON/SUBABLOCK/ASA,ASB,ASC
        COMMON/MAINBLOCK/MA,MB,MC
        
        DATA ASA/'a'/,ASB/'b'/,ASC/'c'/

        WRITE(*,*)"In Subroutine A Local block ", ASA," ", ASB, " ", ASC
        WRITE(*,*)"In Subroutine A main block",MA,MB,MC
       END
