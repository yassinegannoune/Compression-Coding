function out=invzigzag(in,num_rows,num_cols)
tot_elem=length(in);

if nargin>3
	error('Too many input arguments');
elseif nargin<3
	error('Too few input arguments');
end

if tot_elem~=num_rows*num_cols
	error('Matrix dimensions do not coincide');
end

out=zeros(num_rows,num_cols);

cur_row=1;	cur_col=1;	cur_index=1;

while cur_index<=tot_elem
	if cur_row==1 & mod(cur_row+cur_col,2)==0 & cur_col~=num_cols
		out(cur_row,cur_col)=in(cur_index);
		cur_col=cur_col+1;							
		cur_index=cur_index+1;
		
	elseif cur_row==num_rows & mod(cur_row+cur_col,2)~=0 & cur_col~=num_cols
		out(cur_row,cur_col)=in(cur_index);
		cur_col=cur_col+1;							
		cur_index=cur_index+1;
		
	elseif cur_col==1 & mod(cur_row+cur_col,2)~=0 & cur_row~=num_rows
		out(cur_row,cur_col)=in(cur_index);
		cur_row=cur_row+1;							
		cur_index=cur_index+1;
		
	elseif cur_col==num_cols & mod(cur_row+cur_col,2)==0 & cur_row~=num_rows
		out(cur_row,cur_col)=in(cur_index);
		cur_row=cur_row+1;							
		cur_index=cur_index+1;
		
	elseif cur_col~=1 & cur_row~=num_rows & mod(cur_row+cur_col,2)~=0
		out(cur_row,cur_col)=in(cur_index);
		cur_row=cur_row+1;		cur_col=cur_col-1;	
		cur_index=cur_index+1;
		
	elseif cur_row~=1 & cur_col~=num_cols & mod(cur_row+cur_col,2)==0
		out(cur_row,cur_col)=in(cur_index);
		cur_row=cur_row-1;		cur_col=cur_col+1;	
		cur_index=cur_index+1;
		
	elseif cur_index==tot_elem						
        out(end)=in(end);							
		break										
    end
end