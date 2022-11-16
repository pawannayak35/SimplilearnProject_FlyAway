<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<form action="AvailableFlight" method="get" class="row g-3 needs-validation" novalidate>
  <div class="col-md-6"> 
    <label for="validationCustom04" class="form-label">From</label>
    <select class="form-select" id="validationCustom04" name="fsource" required>
      <option selected>Select source city</option>
      <option>New Delhi</option>
      <option>Jaipur</option>
      <option>Chennai</option>
      <option>Varanasi</option>
      <option>Hyderabad</option>
      <option>Bangalore</option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Number.
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="validationCustom04" class="form-label">To</label>
    <select class="form-select" id="validationCustom04" name="fdestination" required>
      <option selected>Select destination city</option>
      <option>Bangalore</option>
      <option>Hyderabad</option>
      <option>Varanasi</option>
      <option>Chennai</option>
      <option>Jaipur</option>
      <option>New Delhi</option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Number.
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="validationCustom02" class="form-label">Date Of Travel</label>
    <input type="date" class="form-control" id="validationCustom02" name="fdate" Placeholder="enter date of travel" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="validationCustom04" class="form-label">Number Of Persons</label>
    <select class="form-select" id="validationCustom04" name="fperson" required>
      <option selected>Select Number of persons travel</option>
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
    <button class="btn btn-primary" type="submit">Search Flights</button>
  </div>
</form>