/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {

    $("#buscar-requerimiento").autocomplete({
        source: "filtrarRequerimiento.json"
    });

    $(".datepicker").datepicker({dateFormat: 'dd/mm/yy'});
    
});


