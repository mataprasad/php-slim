<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">           
  <table class="table table-striped">
    <thead>
      <tr>
        <th>EMPNO</th>
        <th>ENAME</th>
        <th>JOB</th>
        <th>MGR</th>
        <th>HIREDATE</th>
        <th>SAL</th>
        <th>COMM</th>
        <th>DEPTNO</th>
      </tr>
    </thead>
    <tbody>
    <?php for($i=0;$i<count($data);$i++) { ?>
      <tr>
        <td><?php echo $data[$i]->EMPNO ?></td>
        <td><?php echo $data[$i]->ENAME ?></td>
        <td><?php echo $data[$i]->JOB ?></td>
        <td><?php echo $data[$i]->MGR ?></td>
        <td><?php echo $data[$i]->HIREDATE ?></td>
        <td><?php echo $data[$i]->SAL ?></td>
        <td><?php echo $data[$i]->COMM ?></td>
        <td><?php echo $data[$i]->DEPTNO ?></td>
      </tr>
      <?php }?>
    </tbody>
  </table>
</div>

</body>
</html>
