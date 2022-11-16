<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<form action="RegisterServlet" method="get" class="row g-3 needs-validation" novalidate>

  <div class="col-md-2">
    <label for="validationCustom01" class="form-label">Flight ID</label>
    <input type="text" class="form-control" id="validationCustom01" name="pflightid" placeholder="Flight ID" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>

  <div class="col-md-4">
    <label for="validationCustom01" class="form-label">Name</label>
    <input type="text" class="form-control" id="validationCustom01" name="pname" placeholder="Passenger Name" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">E-mail</label>
    <input type="email" class="form-control" id="validationCustom02" name="pemail" placeholder="example@gmail.com" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  
  <div class="col-md-2">
    <label for="validationCustom01" class="form-label">Age</label>
    <input type="text" class="form-control" id="validationCustom01" name="page" placeholder="Age" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  	
  <div class="col-md-2"> 
    <label for="validationCustom04" class="form-label">Gender</label>
    <select class="form-select" id="validationCustom04" name="pgender" required>
      <option selected>Gender</option>
      <option>Male</option>
      <option>Female</option>
      <option>Transgender</option>
      <option>N/A</option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Gender.
    </div>
  </div>
  
  <div class="col-md-2"> 
    <label for="validationCustom04" class="form-label">Number Of Persons</label>
    <select class="form-select" id="validationCustom04" name="pperson" required>
      <option selected>No. of Travel</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
      <option>6</option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Number.
    </div>
  </div>
  
  <div class="col-md-4">
    <label for="validationCustom01" class="form-label">Mobile Number</label>
    <input type="text" class="form-control" id="validationCustom01" name="pmobnumber" placeholder="Mobile Number" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  
  <div class="col-md-4">
    <label for="validationCustom04" class="form-label">ID Card Type</label>
    <select class="form-select" id="validationCustom04" name="pidcardtype" required>
      <option selected>Select ID Card Type</option>
      <option>Aadhaar Card </option>
      <option>Voter Card</option>
      <option>Driving Licence (DL)</option>
      <option>Passport</option>
      <option>Other</option>
    </select>
    <input type="text" class="form-control" id="validationCustom01" name="idcardnumber" placeholder="ID Card Number" required>
    <div class="invalid-feedback">
      Please select a valid Number.
    </div>
  </div>
  
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
  
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Submit</button>
  </div>
</form>