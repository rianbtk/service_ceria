<div class="row">
    <div class="col-sm-12">
        <?php echo form_open('update_state'); ?>
            <div class="row">
                <div class="col-sm-4">
                    <div class="btn-group">
                        <a href="#" onclick="get_add()" class="btn btn-info"><i class="fa fa-plus"></i> Tambah</a>
                        <input type="submit" name="active" value="Aktifkan" class="btn btn-success">
                        <input type="submit" name="nonactive" value="Nonaktifkan" class="btn btn-danger">
                    </div>
                </div>
            </div>
            <br>
            <?php alert() ?>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title">Kategori</div>
                </div>
                <div class="panel-body">
                    <div class="adv-table">
                        <table  class="display table table-bordered table-striped" id="dynamic-table">
                            <thead>
                            <tr>
                                <th><center><input type="checkbox" id="checkall" name="checkall"></center></th>
                                <th>Kategori</th>
                                <th>Status</th>
                                <th><center>Opsi</center></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $no=0; foreach($all as $row): $no++ ?>
                                <tr class="gradeX">
                                    <td align="center"><center><input type="checkbox" value="<?php echo $row->id_category;?>" name="id[]" ></center></td>
                                    <td><?php echo $row->category ?></td>
                                    <td><?php echo get_state($row->state) ?></td>
                                    <td class="center hidden-phone">
                                        <a href="#" onclick="get_update('<?php echo $row->id_category ?>')" class="btn btn-warning btn-xs">
                                            <i class="fa fa-edit"></i> 
                                            <span class="hidden-xs">Edit</span>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <?php echo form_close(); ?>
    </div>
</div>
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="add" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Tambah Data Kategori</h4>
            </div>
            <?php echo form_open('add_category'); ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-sm-4">Kategori</label>
                        <div class="col-sm-8">
                            <input type="text" required placeholder="Masukkan Kategori" autocomplete="off" maxlength="30" class="form-control" name="category">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>
<div id="edit"></div>
<script src="<?php echo base_url()?>assets/backend/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("input[name=checkall]").click(function(){
    
        if(!$(this).is(':checked'))
            $(this).parents('table').find('input[type=checkbox]').attr('checked',false);
        else
            $(this).parents('table').find('input[type=checkbox]').attr('checked',true);
            
        });    
    });
    function get_add(){
        $("#add").modal("show");
    }
    function get_update(id){
        $.ajax({
            url:"<?php echo site_url('view_update_category'); ?>",
            type:"POST",
            cache:false,
            data:"id="+id,
            success:function(data){
                $("#edit").html(data);
            }
        });
    }
</script>