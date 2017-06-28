/*
 * 动态加载数据库生成select标签方法
 *  litong
 *  
 * */

//动态加载数据库生成select标签方法
function selectadd(selObj,mUrl,mData) {
		var sendData = {"search":encodeURI(mData)};
		$.ajax({
			url:mUrl,
			type:'GET',
			data: sendData,
			dataType:'json',
			success:function(data){
				//alert(data);
				$.each(data, function(n, value){
					//alert("data n:"+n+" "+value.name+value.id);
					selObj.append("<option value='"+value.id+"'>"+value.name+"</option>");
				});
				//alert("oh yeah！加载成功啦"+data);	
			},
			error:function(){
				alert("oh my god!加载出错了哦");
			}
		});
	}