<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Új túra javaslat</title>
  <style>
    body { font-family: Arial, sans-serif; line-height:1.5; }
    .header { background: #007bff; color: #fff; padding: 10px; text-align: center; }
    .content { padding: 20px; }
    .field { margin-bottom: 10px; }
    .field label { font-weight: bold; display: inline-block; width: 150px; }
    .footer { font-size: 0.8em; color: #666; text-align: center; margin-top: 20px; }
  </style>
</head>
<body>
  <div class="header">
    <h1>Új túra javaslat</h1>
  </div>
  <div class="content">
    <div class="field">
      <label>Megye:</label> {{ $data['county'] }}
    </div>
    <div class="field">
      <label>Túra ideje:</label> {{ $data['time'] }}
    </div>
    <div class="field">
      <label>Nehézség:</label> {{ ucfirst($data['difficulty']) }}
    </div>
    <div class="field">
      <label>Bicikli fajtája:</label> {{ $data['bikeType'] }}
    </div>
    <div class="field">
      <label>Útvonal neve:</label> {{ $data['routeName'] }}
    </div>
    <div class="field">
      <label>Leírás:</label>
      <p>{{ $data['description'] }}</p>
    </div>
  </div>
  <div class="footer">
    Ez az üzenet a BikeApp rendszertől érkezett.
  </div>
</body>
</html>