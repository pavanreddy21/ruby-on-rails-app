import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-modal"
export default class extends Controller {
    openModal() {
      // Get the user modal target element
      const employmentModalTarget = document.querySelector('[data-employment-modal-target]');
  
      // Show the user modal target element
      employmentModalTarget.classList.remove('hidden');
    }

    closeModal() {
      // Get the user modal target element
      const employmentModalTarget = document.querySelector('[data-employment-modal-target]');
  
      // Show the user modal target element
      employmentModalTarget.classList.add('hidden');

    }
}
