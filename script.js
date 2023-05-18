document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("registration-form");
  const continueBtn = document.getElementById("continue-btn");
  const privacyCheckbox = document.getElementById("privacy-policy");

  form.addEventListener("input", function () {
    const inputs = form.querySelectorAll("input[required]");
    let allFilled = true;

    inputs.forEach(function (input) {
      if (input.value.trim() === "") {
        allFilled = false;
      }
    });

    continueBtn.disabled = !allFilled || !privacyCheckbox.checked;
  });

  form.addEventListener("submit", function (event) {
    event.preventDefault();

    if (continueBtn.disabled) {
      return;
    }

    const companyInput = document.getElementById("company-name");
    const cedulaInput = document.getElementById("cedula");
    const contactNameInput = document.getElementById("contact-name");
    const titleInput = document.getElementById("title");
    const emailInput = document.getElementById("email");
    const phoneInput = document.getElementById("phone");

    const formData = {
      "compania": companyInput.value,
      "cedula": parseInt(cedulaInput.value),
      "nombre": contactNameInput.value,
      "titulo": titleInput.value,
      "correo": emailInput.value,
      "telefono": parseInt(phoneInput.value),
    };

    fetch("https://localhost:7131/api/Participante", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    })
      .then(response => response.json())
      .then(data => {
        // Aquí puedes manejar la respuesta de la API, como mostrar un mensaje de éxito o redireccionar a otra página.
        console.log("Datos enviados correctamente:", data);
      })
      .catch(error => {
        // Aquí puedes manejar los errores de la solicitud HTTP.
        console.error("Error al enviar los datos:", error);
      });
  });
  
  privacyCheckbox.addEventListener("change", function() {
    continueBtn.disabled = !privacyCheckbox.checked;
  });
});
