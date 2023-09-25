import { Controller } from "@hotwired/stimulus"
import { validateEmail, validateName, validateAddress, validatePhoneNumber,  } from "../utils";

// Connects to data-controller="forms"
export default class extends Controller {

  connect() {
    const userEmailField = this.element.querySelector("#userEmail");
    const firstNameField = this.element.querySelector("#userName");
    const addressField = this.element.querySelector("#userAddress");
    const phoneNumberField = this.element.querySelector("#userPhoneNumber");
    const saveButton = this.element.querySelector("#userSaveButton");

    userEmailField.addEventListener("keyup", () => {
      const userEmail = userEmailField.value;
      const isValidEmail = validateEmail(userEmail);
      toggleFieldValidation(userEmailField, isValidEmail);
    });

    firstNameField.addEventListener("keyup", () => {
      const firstName = firstNameField.value;
      const isValidFirstName = validateName(firstName, 25);
      toggleFieldValidation(firstNameField, isValidFirstName);
    });


    addressField.addEventListener("keyup", () => {
      const address = addressField.value;
      const isValidAddress = validateAddress(address);
      toggleFieldValidation(addressField, isValidAddress);
    });

    phoneNumberField.addEventListener("keyup", () => {
      const phoneNumber = phoneNumberField.value;
      const isValidPhoneNumber = validatePhoneNumber(phoneNumber);
      toggleFieldValidation(phoneNumberField, isValidPhoneNumber);
    });

    function toggleFieldValidation(field, isValid) {
      if (!isValid) {
        field.classList.add("is-invalid");
        saveButton.disabled = true;
      } else {
        field.classList.remove("is-invalid");
        // Enable the save button only if all fields are valid
        saveButton.disabled = !areAllFieldsValid();
      }
    }

    function areAllFieldsValid() {
      return (
        validateEmail(userEmailField.value) &&
        validateName(firstNameField.value, 25) &&
        validateAddress(addressField.value) &&
        validatePhoneNumber(phoneNumberField.value)
      );
    }
  }
}
