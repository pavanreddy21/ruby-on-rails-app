import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-modal"
export default class extends Controller {
    openModal() {
      // Get the user modal target element
      const userModalTarget = document.querySelector('[data-user-modal-target]');
  
      // Show the user modal target element
      userModalTarget.classList.remove('hidden');
    }

    closeModal() {
      // Get the user modal target element
      const userModalTarget = document.querySelector('[data-user-modal-target]');
  
      // Show the user modal target element
      userModalTarget.classList.add('hidden');

    }
}
