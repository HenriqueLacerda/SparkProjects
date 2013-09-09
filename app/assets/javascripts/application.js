// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


	$(function() {
		$(".data").datepicker({
			dateFormat : 'dd/mm/yy',
			weekHeader: 'Semana',
			dayNames : ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
			dayNamesMin : ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
			dayNamesShort : ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
			monthNames : ['Janeiro', 'Fevereiro', 'MarÃ§o', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
			monthNamesShort : ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
			nextText : 'Próximo',
			prevText : 'Anterior'
		});
		//$(".data").mask("99/99/9999");
		
	}); 


function jsBuscaCep() {
  var cep = document.getElementById( "endereco_cep" ).value;

  $.getJSON("/admin/users/busca_por_cep/" + cep,
    function ( data ) {
      console.log(data);
      $("#endereco_logradouro").val(data.tipo_logradouro + ' ' + data.logradouro);
      $("#endereco_bairro").val(data.bairro);
      $("#endereco_cidade").val(data.cidade);
      $("#endereco_estado").val(data.uf);
    }
  );
}

//def busca_por_cep
//  render :json => BuscaEndereco.cep(params[:cep])
//rescue RuntimeError
//  render :json => ["", "zipcode nao encontrado", "", "", ""].to_json
//end

//= profile_form.fields_for :addresses do |address_form|
//  .control-group
//    = address_form.input :zipcode, input_html: {'id'=>"endereco_cep", 'onBlur' => "jsBuscaCep()"}
//    = address_form.input :address, input_html: {'id'=>"endereco_logradouro"}
//    = address_form.input :neighborhood, input_html: {'id'=>"endereco_bairro"}
//    = address_form.input :city, input_html: {'id'=>"endereco_cidade"}
//    = address_form.input :state, input_html: {'id'=>"endereco_estado"}
//
//    %hr
//= profile_form.link_to_add "+ Address", :addresses , :class => 'btn btn-success'

//route
//get '/admin/users/busca_por_cep/:cep' => 'admin/users#busca_por_cep'