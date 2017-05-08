$(document).ready(function(){
//    nav-li hover e
    var num;
    $('.nav-main>li[id]').hover(function(){
       /*图标向上旋转*/
        $(this).children('span').removeClass().addClass('hover-up');
        /*下拉框出现*/
        var Obj = $(this).attr('id');
        num = Obj.substring(3, Obj.length);
        $('#box-'+num).slideDown(300);
    },function(){
        /*图标向下旋转*/
        $(this).children('span').removeClass().addClass('hover-down');
        /*下拉框消失*/
        $('#box-'+num).hide();
    });
//    hidden-box hover e
    $('.hidden-box').hover(function(){
        /*保持图标向上*/
        $('#li-'+num).children('span').removeClass().addClass('hover-up');
        $(this).show();
    },function(){
        $(this).slideUp(200);
        $('#li-'+num).children('span').removeClass().addClass('hover-down');
    });
});
//  $(document).ready(function(){
// //    nav-li hover e
//     var num;
//     $('.nav-main>a[id]').hover(function(){
//        /*图标向上旋转*/
//         $(this).nextsiblings().removeClass().addClass('hover-up');
//         /*下拉框出现*/
//         var Obj = $(this).attr('id');
//         num = Obj.substring(3, Obj.length);
//         $('#box-'+num).slideDown(300);
//     },function(){
//         /*图标向下旋转*/
//         $(this).nextsiblings().removeClass().addClass('hover-down');
//         /*下拉框消失*/
//         $('#box-'+num).hide();
//     });
// //    hidden-box hover e
//     $('.hidden-box').hover(function(){
//         /*保持图标向上*/
//         $('#a-'+num).nextsiblings().removeClass().addClass('hover-up');
//         $(this).show();
//     },function(){
//         $(this).slideUp(200);
//         $('#a-'+num).nextsiblings().removeClass().addClass('hover-down');
//     });
// });
