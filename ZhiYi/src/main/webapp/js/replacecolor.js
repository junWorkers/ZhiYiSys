function blocks(_this,num){
	var div=document.getElementsByClassName('lunbo');
	console.info(num);
	for(var i=1;i<=div.length;i++){
		if(num==i){
			
			document.getElementById(i).style.display='block';
		}else{
			document.getElementById(i).style.display='none';	
		}
	}
}

