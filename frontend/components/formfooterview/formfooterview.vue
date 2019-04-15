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
        <p>Social Media</p>
        <div class="social-media-input"
              v-for="media in this.socialMediaArray">
          <label for="">Name</label>
          <input type="text" name="footer[social-media-name][]" :value="media.title">

          <label for="">URL</label>
          <input type="text" name="footer[social-media-ur;][]" :value="media.url">
        </div>
      </div>

      <input type="submit" value="Submit Changes">
    </form>
  </div>
</template>
<script src="./formfooterview.js"></script>
<style lang="scss" src="./formfooterview.scss"></style>
