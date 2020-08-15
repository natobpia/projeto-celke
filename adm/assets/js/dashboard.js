$(document).ready(function () {
    //Apresentar ou ocultar o menu
    $('.sidebar-toggle').on('click', function () {
        $('.sidebar').toggleClass('toggled');
    });

    //carregar aberto o submenu
    var active = $('.sidebar .active');
    if (active.length && active.parent('.collapse').length) {
        var parent = active.parent('.collapse');

        parent.prev('a').attr('aria-expanded', true);
        parent.addClass('show');
    }
});

//Carregar modal define para apagar
$(document).ready(function () {
    $('a[data-confirm]').click(function (ev) {
        var href = $(this).attr('href');
        if (!$('#confirm-delete').length) {
            $('body').append('<div class="modal fade" id="confirm-delete" tabindex="-1" \n\
role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">\n\
<div class="modal-dialog"><div class="modal-content">\n\
<div class="modal-header bg-danger text-white">EXCLUIR ITEM\n\
<button type="button" class="close" data-dismiss="modal" aria-label="Close">\n\
<span aria-hidden="true">&times;</span>\n\
</button></div>\n\
<div class="modal-body">Tem certeza de que deseja excluir o item selecionado?</div>\n\
<div class="modal-footer">\n\
<button type="button" class="btn btn-success" data-dismiss="modal">Cancelar</button>\n\
<a class="btn btn-danger text-white" id="dataConfirmOK">Apagar</a>\n\
</div>\n\
</div>\n\
</div>\n\
</div>');
        }
        $('#dataConfirmOK').attr('href', href);
        $('#confirm-delete').modal({ show: true });
        return false;
    });
});

//Apresentar tooltip
$(function () {
    $('[data-toggle="tooltip"]').tooltip()
});