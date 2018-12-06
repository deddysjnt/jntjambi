$(document).on('turbolinks:load',function(){
	
	//var field_name = $(this).prop("name");
	//var field_id   = $(this).prop("id");
	//var field_type = $(this).prop("type");
	$('.datepicker').datepicker( { option: 'id', dateFormat:'yy-mm-dd' } );

	$('.perkiraan').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/perkiraans.json',
			select: function( event, ui ){
				$( "input[id^='id']" ).val(ui.item.id);
				$( "input[id^='acno']" ).val(ui.item.acno);
				}
		});

	//ini untuk menu droppoint, karyawan form
	$('.perkiraan_to_kasir_kas').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/perkiraans.json',
			select: function( event, ui ){
				$( ".kasir_kas" ).val(ui.item.id);
				}
		});
	//ini untuk menu droppoint form
	$('.perkiraan_to_kasir_bank').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/perkiraans.json',
			select: function( event, ui ){
				$( ".kasir_bank" ).val(ui.item.id);
				}
		});
//ini untuk menu droppoint form
	$('.perkiraan_to_perkiraan_id').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/perkiraans.json',
			select: function( event, ui ){
				var field_id = $(this).prop("id");
    		var n = field_id.lastIndexOf("nama_perkiraan");
    		var target_id = "#"+field_id.substr(0, n)+"perkiraan_id";
    		var target_ac = "#"+field_id.substr(0, n)+"acno";
				$( target_id ).val(ui.item.id);
				$( target_ac ).val(ui.item.acno);
				}
		});
	//ini untuk menu karyawan form
	$('.nama_dp_to_droppoint_id').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/droppoints.json',
			select: function( event, ui ){
				$( ".droppoint_id" ).val(ui.item.id);
				}
		});
	//ini untuk menu karyawan form
	$('.nama_jabatan_to_jabatan_id').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/jabatans.json',
			select: function( event, ui ){
				$( ".jabatan_id" ).val(ui.item.id);
				}
		});
	//ini untuk menu droppoint, karyawan form
	$('.nama_jabatan_pusat_to_jabatanpusat_id').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/jabatanpusats.json',
			select: function( event, ui ){
				$( ".jabatanpusat_id" ).val(ui.item.id);
				}
		});
	//ini untuk menu user edit
	$('.nama_karyawan_to_user').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/karyawans.json',
			select: function( event, ui ){
				$( "#user_karyawan_id" ).val(ui.item.id);
				$( "#user_droppoint_id" ).val(ui.item.droppoint_id);
				$( "#user_nama_dp" ).val(ui.item.nama_dp);
				}
		});
	//ini untuk menu user edit
	$('.karyawan_to_sprinter').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/karyawans.json',
			select: function( event, ui ){
				$( ".karyawan_id" ).val(ui.item.id);
				$( ".droppoint_id" ).val(ui.item.droppoint_id);
				$( ".jabatan_id" ).val(ui.item.jabatan_id);
				$( ".nama_jabatan" ).val(ui.item.nama_jabatan);
				$( ".nama_dp" ).val(ui.item.nama_dp);
				}
		});

	
	$('.karyawan').autocomplete({ 
			minLenght: 0,
			delay: 50,
			source: '/karyawans.json',
			select: function( event, ui ){
				$( "input[id^='id']" ).val(ui.item.id);
				$( "input[id^='acno']" ).val(ui.item.acno);
				}
		});

}); // end off scrip