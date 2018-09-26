jQuery(function($){
    jQuery('#myform').click(function(){
        form = $(this).parent('form');
        $.ajax({
            url: 'http://shop.dreamsoft/options.php',
            type: 'GET',
            dataType: 'json',
            data: ({
                'mes': $(this).parent('form').find('textarea').val(),
                'question': $(this).parent('form').find('input[name=question]').val(),
                'span': $(this).parent('form').find('input[name=span]').val()
                }),
            success: function(response){
                if (response){ // если есть ответ, то выполняем след. действия
                    form.append('<div class="mes-success">Спасибо за ваше сообщение</div>');
                } else {
                    form.append('<div class="mes-error">Ошибка!</div>');
                }
            }
        });
    });
     
});