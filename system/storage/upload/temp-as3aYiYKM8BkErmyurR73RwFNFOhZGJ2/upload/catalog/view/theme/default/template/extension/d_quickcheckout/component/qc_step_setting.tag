<qc_step_setting>
    <form class="step-setting">
        <div class="btn-group btn-group-xs" data-toggle="buttons">
            <label class="btn btn-default handle-sortable" id="{ opts.field_id }">
                <i class="fa fa-arrows"></i>
            </label>
            <a class="btn btn-default " onclick="{toggleSetting}" >
                <i class="fa fa-gear"></i>
            </a>

            <yield/>

            <a class="btn btn-default " onclick="{removeStep}" >
                <i class="fa fa-times"></i>
            </a>
        </div>
    </form>

    <script>
        this.mixin({store:d_quickcheckout_store});
        var tag = this;
        toggleSetting(e){
            if($('#'+ this.opts.setting_id).hasClass('show')){
                this.store.hideSetting()
            }else{
                this.store.showSetting(this.opts.setting_id);
            }
        }
        
        removeStep(e){
            var step_id = $(e.currentTarget).parents('[data-name="'+this.opts.step+'"]').attr('id');
            this.store.dispatch('step/remove', {step_id : step_id} );
            tag.store.hideSetting();
        }
    </script>
</qc_step_setting>