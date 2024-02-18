
document.addEventListener('DOMContentLoaded', function() {
    var addWaypointButton = document.getElementById('addWaypoint');
    var waypointInput = document.querySelector('input[name="route[waypoint]"]');
  
    addWaypointButton.addEventListener('click', function() {
      var newWaypoint = prompt('経由地を追加してください');
      if (newWaypoint) {
        waypointInput.value = newWaypoint;
      }
    });
  });
  