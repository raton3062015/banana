
U8* StrRemChar(U8 *s,U8 ch){
	U8 *f1,*f2;
	f1=f2=s;
	while(*f1){
		while(*f1==ch)f1++;
		*f2++=*f1++;

	}
	*f2=0;
	return s;
}

U8 *StrLeftTrimChar(U8 *s){
	U8 ch;
	U8 *p=s;
	if(*p){
	ch=*p++;
	while(ch==*p)p++;
	}
	return p;
}


U8* StrCompactChar(U8 *s){
	U8 *p=s;
	U8 *res=s;
	U8 ch,*dst=s;
	while(*res){
		ch=*res;
		*dst++=*res++;		
		if(ch==*res){
			res=StrLeftTrimChar(res);
		}
		
	}
	*dst=0;
	return s; 
}

U8 *StrLineData(U8 *s,U8 *mark){
	U8 *p=s;
	U8 *res,*res2;
	while(res=StrFirstOcc(p,mark)){
		//StrLeftTrimChar(res);
		if(StrNCmp(res,mark,2)==0){
			//*res='\n';
		}else{
			*res=' ';
		}
		res++;
		//res2=StrFirstOcc(res+1,"\n\n");
		p=res;
		
	}
	return s;
}

