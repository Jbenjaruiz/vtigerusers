{block name=head}    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
{/block}

<h4 class="text-center">{'Users'|vtranslate:$MODULE}</h4>
<div class="text-right">
    <button type="button" class="btn-sm" data-toggle="modal" data-target="#addNewUser">
        Agregar usuario <i class="fa-solid fa-add"></i>
    </button>

</div>

    <div class="modal fade" id="addNewUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Agregar usuario</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="userFistName">Nombres</label>
                            <input type="text" class="form-control" id="userFistName" placeholder="Nombre completo">
                        </div>
                        <div class="form-group">
                            <label for="userName">Nombre de usuario</label>
                            <input type="text" class="form-control" id="userName" placeholder="Fulanito">
                        </div>
                        <div class="form-group">
                            <label for="userEmail">Correo</label>
                            <input type="text" class="form-control" id="userEmail" placeholder="ejemplo@mail.com">
                        </div>
                        <div class="form-group">
                            <label for="userWebSite">Sitio web</label>
                            <input type="text" class="form-control" id="userWebSite" placeholder="www.ejemplo.com">
                        </div>
                        <div class="form-group">
                            <label for="userPhoneNumber">Teléfono</label>
                            <input type="text" class="form-control" id="userPhoneNumber"
                                placeholder="Número telefónico">
                        </div>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Guardar</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>


<h4>{$UsersComplete}</h4>

<div class="container">
    <table id="tableData" class="table-hover" style="width:100%">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nombre</th>
                <th scope="col">Usuario</th>
                <th scope="col">Correo</th>
                <th scope="col">Sitio Web</th>
                <th scope="col">Teléfono</th>
                <th scope="col">Opciones</th>
            </tr>
        </thead>
        <tbody>
            {section name=order loop=$DataUsers}
            <tr>
                <td class="text-center">{$DataUsers[order].id}</td>
                <td>{$DataUsers[order].name}</td>
                <td>{$DataUsers[order].username}</td>
                <td>{$DataUsers[order].email}</td>
                <td>{$DataUsers[order].website}</td>
                <td class="text-right">{$DataUsers[order].phone}</td>
                <td>
                    <button type="button" class="btn-sm" data-toggle="modal"
                        data-target="#userEdit-{$DataUsers[order].id}">
                        <i class="fa-solid fa-pen"></i>
                    </button>

                    <button type="button" class="btn-sm" data-toggle="modal"
                        data-target="#userDelete-{$DataUsers[order].id}">
                        <i class="fa-solid fa-trash"></i>
                    </button>

                    <div class="modal fade" id="userDelete-{$DataUsers[order].id}" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Eliminar usuario</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h5> Deseas eliminar el usuario {$DataUsers[order].name}?</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="userEdit-{$DataUsers[order].id}" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Editar usuario</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="userFistName-{$DataUsers[order].id}">Nombres</label>
                                            <input type="text" class="form-control"
                                                id="userFistName-{$DataUsers[order].id}" aria-describedby="emailHelp"
                                                placeholder="Nombre completo" value="{$DataUsers[order].name}">
                                            
                                        </div>
                                        <div class="form-group">
                                            <label for="userName-{$DataUsers[order].id}">Nombre de usuario</label>
                                            <input type="text" class="form-control"
                                                id="userName-{$DataUsers[order].id}" placeholder="Fulanito" value="{$DataUsers[order].username}">
                                        </div>
                                        <div class="form-group">
                                            <label for="userEmail-{$DataUsers[order].id}">Correo</label>
                                            <input type="text" class="form-control"
                                                id="userEmail-{$DataUsers[order].id}" value="{$DataUsers[order].email}" aria-describedby="emailHelp" placeholder="ejemplo@mail.com">
                                                <small id="emailHelp" class="form-text text-muted">No compartiremos tu correno con nadie más.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="userWebSite-{$DataUsers[order].id}">Sitio web</label>
                                            <input type="text" class="form-control"
                                                id="userWebSite-{$DataUsers[order].id}" placeholder="www.ejemplo.com" value="{$DataUsers[order].website}">
                                        </div>
                                        <div class="form-group">
                                            <label for="userPhoneNumber-{$DataUsers[order].id}">Teléfono</label>
                                            <input type="text" class="form-control"
                                                id="userPhoneNumber-{$DataUsers[order].id}"
                                                placeholder="Número telefónico" value="{$DataUsers[order].phone}">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            {/section}
        </tbody>
    </table>
</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/plug-ins/1.13.1/dataRender/datetime.js"></script>

{literal}
<script type="text/javascript">
$(document).ready(function () {    
    $('#tableData').DataTable({
        "language": {
            "emptyTable": "No hay datos disponibles.",
            "info": "_START_ - _END_ de _TOTAL_ registros.",
            "infoEmpty": "Mostrando de 0 a 0 de 0 registros",
            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
            "lengthMenu": "Mostrar _MENU_ registros por página.",
            "loadingRecords": "Cargando...",
            "search": "Buscar:",
            "zeroRecords": "No se han encontrado registros coincidentes.",
            "paginate": {
            "first": "Primera",
            "last": "Última",
            "next": "Siguiente",
            "previous": "Anterior"            }
        },
        lengthMenu: [
            [15, 25, 50, 100, -1],
            [15, 25, 50, 100, 'Todo'],
        ],
        "stateSave": true,
        "ordering": true,
        "processing": true,
        pagingType: 'full_numbers'
    });
});
</script>
{/literal}