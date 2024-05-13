
RV_cells = {[1,3,4]};
NL = [4]
method_cells = {'BCGM'};
img_paths = ["chi1.jpg"];
img_size = 512 ; 


[noise_info,res_table,Info_line,x_rec,dst,~,~,~]= config (char(img_paths(mgg)), Sig_n,RV_cells{i}, [1 2 2], method_cells{j},img_size);
