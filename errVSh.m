function errVSh(A, y0, t0, tf)
hold on;
for i = 1:10; 
    N = 2.^(i);
    h = (tf-t0)./N;
    [approx, err] = eulerint(A, y0, t0, tf, N);
    totalh(i) = h;
    normerr(i) = norm(err);
end
loglog(totalh, normerr, 'r')
return;