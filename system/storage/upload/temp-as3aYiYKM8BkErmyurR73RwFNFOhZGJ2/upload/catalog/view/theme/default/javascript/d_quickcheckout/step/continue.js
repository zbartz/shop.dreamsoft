/**
*   Continue Model
*/

(function(){


    this.subscribe('continue/next', function(data) {
        clearTimeout(this.continue_timer);
        var current_page_id = this.getSession().page_id;
        var data = { page_id:  current_page_id}

        this.continue_timer = setTimeout(function(){
            this.send('extension/d_quickcheckout/continue/update', data, function(json){

                this.setState(json);
                this.setChange(this.getState());
                if(current_page_id == this.getSession().page_id){
                    this.goToError();
                }

            }.bind(this));
        }, 11);
        
    });

    this.subscribe('continue/edit', function(data) {
        this.setState(data);
    });


})(qc);
