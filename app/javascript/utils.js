export function validateEmployer(name) {
  console.log(name);
  return name.trim().length > 0;
}

export function validateStartAndEndDate(startDate, endDate) {
  console.log(startDate, endDate);

  // Check if both start date and end date are non-empty
  if (startDate.trim().length > 0 && endDate.trim().length > 0) {
    // Parse the dates into JavaScript Date objects
    const parsedStartDate = new Date(startDate);
    const parsedEndDate = new Date(endDate);

    // Check if the parsed start date is less than the parsed end date
    if (parsedStartDate < parsedEndDate) {
      return true;
    } else {
      // Start date is not less than end date
      console.log("Start date must be less than end date.");
      return false;
    }
  } else {
    // Either start date or end date is empty
    console.log("Both start date and end date must be provided.");
    return false;
  }
}

export function validateEmail(email) {
  const regex =
    /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return regex.test(email);
}

export function validateName(name, maxLength) {
  return name.length > 0 && name.length <= maxLength;
}

export function validateAddress(address) {
  // You can add your address validation logic here
  // For simplicity, we'll just check if it's not empty
  return address.trim() !== "";
}

export function validatePhoneNumber(phone) {
  // You can add your phone number validation logic here
  // For simplicity, we'll just check if it's not empty
  return phone.trim() !== "";
}
