{include file='templates/header.tpl'}
    <form action="confirmacionUpdateCategoria/{$categoria->id_categoria}" method="post">
            <input type="text" name="nombre_categoria" id="nombre_categoria"  placeholder="Nombre" value="{$categoria->nombre_categoria}">
            <input type="submit" value="modificar">

    </form>
    <a href="admin">Volver atras</a>

{include file='templates/footer.tpl'}