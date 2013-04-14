
<h1>Consejo Académico</h1>
<table border="1">
  <tr>
    <!--<th>ID</th>-->
    <th>Nombre</th>
    <th>Apellido</th>
    <th>Departamento</th>
  </tr>

  <?php foreach ($profesores as $profesor):  ?>
  <tr>
    <!-- <td><?php echo $profesor['ConsejoAcademico']['id'] ?></td> -->
    <td><?php echo $profesor['ConsejoAcademico']['nombre_profesor'] ?></td>
    <td><?php echo $profesor['ConsejoAcademico']['apellido_profesor'] ?></td>
    <td><?php echo $profesor['ConsejoAcademico']['departamento'] ?></td>
  </tr>
  <?php endforeach; ?>
  <?php unset($profesores); ?>
</table>
