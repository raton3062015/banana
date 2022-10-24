
class node{
	U8 i;
	I64 d;
	Bool v;
};

U8 line[100];
node all[12000];


U0 main(){
I64 size;
U8 *inp;
inp=FileRead("C:/input.txt",&size);
I64 ind=0;
while(*StrFirstRem(inp,"\n",line)){
	//"%s\n",line;
	all[ind].i=*line;
	all[ind].v=FALSE;
	all[ind++].d=Str2I64(line+3);
	//"%d\n",Str2I64(line+3);
}

Bool flag=TRUE;
I64 ptr=0,acc=0,i=0;
while(flag){
		
	if(all[ptr].v==TRUE)flag=FALSE;
	else{
	all[ptr].v=TRUE;
	switch(all[ptr].i){
		case 'n':
			ptr++;
			break;
		case 'a':
			acc+=all[ptr++].d;
			
			break;
		case 'j':
			ptr+=all[ptr].d;
			break;
		
		}
	}
	//"%d %d\n",ptr,all[ptr].v;
	//if(i==7)flag=FALSE;	
	//i++;
}//while
"%d\n",acc;
}
main;