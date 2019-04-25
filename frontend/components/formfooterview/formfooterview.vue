<template>
 <div class="form-footer-view-container">
    <form action="/admin/footer/1" method="post">
      <input type="hidden" name="_method" value="put">
      <input type="hidden" name="authenticity_token" :value="csrf">
      <input type="hidden" name="form-id" :value="id">

      <div class="form-group-top">
        <div class="form-line">
          <label for="">Telephone</label>
          <input type="text" name="footer[telephone_contact]" :value="telephone">
        </div>

        <div class="form-line">
          <label for="">Primary Email</label>
          <input type="text" name="footer[email_primary]" :value="primaryemail">
        </div>
      </div>

      <div class="form-group-top">
        <div class="form-line">
          <label for="">Contact Email</label>
          <input type="text" name="footer[email_contact]" :value="contactemail">
        </div>

        <div class="form-line">
          <label for="">Address</label>
          <input type="text" name="footer[location]" :value="location">
        </div>
      </div>

      <div class="form-group-column">
        <p>Social Media Handles</p>
        <div class="form-group-line">
          <label for="">Name</label>
          <input type="text" name="footer[social_media_name][]" :value="socialMediaArray[0].title">

          <label for="">URL</label>
          <input type="text" name="footer[social_media_url][]" :value="socialMediaArray[0].url">
        </div>
        <div class="form-group-line">
          <label for="">Name</label>
          <input type="text" name="footer[social_media_name][]" :value="socialMediaArray[1].title">

          <label for="">URL</label>
          <input type="text" name="footer[social_media_url][]" :value="socialMediaArray[1].url">
        </div>
        <div class="form-group-line">
          <label for="">Name</label>
          <input type="text" name="footer[social_media_name][]" :value="socialMediaArray[2].title">

          <label for="">URL</label>
          <input type="text" name="footer[social_media_url][]" :value="socialMediaArray[2].url">
        </div>
        <div class="form-group-line">
          <label for="">Name</label>
          <input type="text" name="footer[social_media_name][]" :value="socialMediaArray[3].title">

          <label for="">URL</label>
          <input type="text" name="footer[social_media_url][]" :value="socialMediaArray[3].url">
        </div>
        <div class="form-group-line">
          <label for="">Name</label>
          <input type="text" name="footer[social_media_name][]" :value="socialMediaArray[4].title">

          <label for="">URL</label>
          <input type="text" name="footer[social_media_url][]" :value="socialMediaArray[4].url">
        </div>
      </div>

      <div class="form-button-container">
        <input class="form-button" type="submit" value="Submit Changes">
      </div>
    </form>
  </div>
</template>
<script src="./formfooterview.js"></script>
<style lang="scss" src="./formfooterview.scss"></style>
