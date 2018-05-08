function [f,y] = dichotomous_multi(xinit, a, b, d, eps)
    0
    L = b - a;
    x1 = [0, 0];
    x2 = [0, 0];
    xfinal = [0, 0];
    
    while (L > 2*eps)
        alpha1 = a + (L - eps)/2;
        alpha2 = a + (L + eps)/2;
        
        x1 = xinit + (alpha1 * d(1));
        x2 = xinit + (alpha2 * d(2));
        
        if mult(x1) < mult(x2)
            b = alpha2;
         
        else
            a = alpha1;
            
        end
        x1 = xinit + (alpha1 * d(1));
        x2 = xinit + (alpha2 * d(2));
        xfinal(1) = (x1(1) + x2(1))/2;
        xfinal(2) = (x1(2) + x2(2))/2;
        f = mult(xfinal)
        y=[x1 x2];

        L = b - a; 
        hold on;
        plot(x1(:,1), x1(:,2),'r*')
        plot(x2(:,1), x2(:,2),'y*')
        
    end

    
    
end

            
        
        