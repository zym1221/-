function getStyle(obj,name){
				if(window.getComputedStyle){
					return getComputedStyle(obj,null)[name];
				}else{
					return obj.currentStyle[name];
				}
			};
			/* var timer; */
			/**
			obj:要执行动画的对象,
			speed: 移动速度为正
			target:执行动画的目标位置
			attr：要执行动画的样式,比如left，top、width
			callback:回调函数，将会在动画完毕以后执行
			 */
			function move(obj,attr,target,speed,callback){
				clearInterval(obj.timer);
				
				/**
				 * 判断速度的正负值
				 * 如果从0向800移动，则speed为正
				 * 如果从800向0移动，则speed为负
				 */
				var current=parseInt(getStyle(obj,attr));
				if(current>target){
					//此时速度应为负值
					speed=-speed;
				}

				//开启一个定时器,用来执行动画效果
				//
				obj.timer=setInterval(function(){
					//获取box1原来的left值
					var oldValue=parseInt(getStyle(obj,attr));
		
					//在旧值的基础上自增
					var newValue=oldValue+speed;
	
					//判断newValue是否大于800
					//向左移动时,判断newValue是否小于taget 
					//向右移动时,判断newValue是否大于taget 
					if((speed<0 &&  newValue<target)||(speed>0&&newValue>target)){
						newValue=target;
					}
					//将新值设置给box1
					obj.style[attr]=newValue+"px";
					
					//当元素移动到800px时,使其停止动画
					if(newValue==target){
						clearInterval(obj.timer);
						callback&&callback();
					}
				},30);
				};