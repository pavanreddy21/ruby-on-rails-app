import { Controller } from "@hotwired/stimulus"
import { validateEmployer, validateStartAndEndDate } from "../utils";


// Connects to data-controller="forms"
export default class extends Controller {

  connect() {

    console.log("connected")
    const employerField = this.element.querySelector("#employer");
    const startDateField = this.element.querySelector("#startDate");
    const endDateField = this.element.querySelector("#endDate");
    const saveButton = this.element.querySelector("#employmentAddButton");
    

    employerField.addEventListener("keyup", () => {
      const isValidEmployer = validateEmployer(employerField.value);
      toggleFieldValidation(employerField, isValidEmployer);
    });

    startDateField.addEventListener("change", () => {
      const areValidDates = validateStartAndEndDate(startDateField.value, endDateField.value);
      toggleFieldValidation(startDateField, areValidDates);
      toggleFieldValidation(endDateField, areValidDates);
    });


    endDateField.addEventListener("change", () => {
      const areValidDates = validateStartAndEndDate(startDateField.value, endDateField.value);
      toggleFieldValidation(startDateField, areValidDates);
      toggleFieldValidation(endDateField, areValidDates);
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
        validateEmployer(employerField.value) &&
        validateStartAndEndDate(startDateField.value, endDateField.value)
      );
    }
  }
}
