       SUBROUTINE SUBB
        IMPLICIT NONE

        CHARACTER(1) :: ASA, ASB, ASC
        REAL :: BSA, BSB, BSC
        INTEGER :: MA, MB, MC

        COMMON/MAINBLOCK/MA,MB,MC
        COMMON/SUBBBLOCK/BSA,BSB,BSC
        COMMON/SUBABLOCK/ASA,ASB,ASC

        DATA BSA/10.0/,BSB/20.0/,BSC/30.0/

        WRITE(*,*)"In Subroutine B Local Block is",BSA,BSB,BSC
        WRITE(*,*)"In Subroutine B Main Block is",MA,MB,MC
        WRITE(*,*)"In Subroutine B A Block is ",ASA," ",ASB," ",ASC

        CALL SUBA

        WRITE(*,*)"In Subroutine B A Block is ",ASA," ",ASB," ",ASC
       END
