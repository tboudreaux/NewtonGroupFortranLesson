C Here we have our subroutine.
      subroutine subTest(input, output)
         implicit none

         integer :: const, input
         real :: output
  
         parameter(const=2)

         if (input.le.5)then
               output = const
      else
               output = 0
         endif 


         write(*,*)"Called!"

         end
