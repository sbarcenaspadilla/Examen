document.addEventListener("DOMContentLoaded", function () {
  const participantsTableBody = document.getElementById("participants-body");

  fetch("https://localhost:7131/api/Participante")
    .then((response) => response.json())
    .then((data) => {
      showParticipantsTable(data);
    })
    .catch((error) => {
      console.error("Error al cargar los participantes:", error);
    });

  function showParticipantsTable(data) {
    data.forEach((participant) => {
      const row = document.createElement("tr");
      row.innerHTML = `
        <td>${participant.compania}</td>
        <td>${participant.cedula}</td>
        <td>${participant.nombre}</td>
        <td>${participant.titulo}</td>
        <td>${participant.correo}</td>
        <td>${participant.telefono}</td>
      `;
      participantsTableBody.appendChild(row);
    });
  }
});
