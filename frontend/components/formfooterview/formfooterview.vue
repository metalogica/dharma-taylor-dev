<template>
 <div class="form-footer-view-container">
    <form action="/footer" method="post">
      <input type="hidden" name="_method" value="put">
      <input type="hidden" name="authenticity_token" :value="csrf">
      <input type="hidden" name="form-id" :value="id">

      <label for="">Telephone</label>
      <input type="text" name="footer[telephone]" :value="telephone">

      <label for="">Primary Email</label>
      <input type="text" name="footer[primary-email]" :value="primaryemail">

      <label for="">Contact Email</label>
      <input type="text" name="footer[contact-email]" :value="contactemail">

      <label for="">Address</label>
      <input type="text" name="footer[address]" :value="location">

      <div class="social-media-forms">
        <div>
          <p>Social Media 1</p>
          <label for="">Name</label>
          <input type="text" name="footer[social-media-name][]" :value="socialMediaArray[0].title">

          <label for="">URL</label>
          <input type="text" name="footer[social-media-ur;][]" :value="socialMediaArray[0].url">
        </div>
        <div>
          <p>Social Media 2</p>
          <label for="">Name</label>
          <input type="text" name="footer[social-media-name][]" :value="socialMediaArray[1].title">

          <label for="">URL</label>
          <input type="text" name="footer[social-media-url][]" :value="socialMediaArray[1].url">
        </div>
        <div>
          <p>Social Media 3</p>
          <label for="">Name</label>
          <input type="text" name="footer[social-media-name][]" :value="socialMediaArray[2].title">

          <label for="">URL</label>
          <input type="text" name="footer[social-media-url][]" :value="socialMediaArray[2].url">
        </div>
        <div>
          <p>Social Media 4</p>
          <label for="">Name</label>
          <input type="text" name="footer[social-media-name][]" :value="socialMediaArray[3].title">

          <label for="">URL</label>
          <input type="text" name="footer[social-media-url][]" :value="socialMediaArray[3].url">
        </div>
        <div>
          <p>Social Media 5</p>
          <label for="">Name</label>
          <input type="text" name="footer[social-media-name][]" :value="socialMediaArray[4].title">

          <label for="">URL</label>
          <input type="text" name="footer[social-media-url][]" :value="socialMediaArray[4].url">
        </div>
      </div>

      <input type="submit" value="Submit Changes">
    </form>
  </div>
</template>
<script src="./formfooterview.js"></script>
<style lang="scss" src="./formfooterview.scss"></style>
