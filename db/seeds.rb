User.create!(email: 'rjarram@me.com', password: 'wetfish777', admin: true) unless User.first.present?

Project.create!([
  {name: "Archive", blurb: "", description: "", visibility: false, highlight: false, slug: "archive", project_order: nil},
  {name: "'Untitled'", blurb: "CAPSULE COLLECTION 07",description: "Photography by Edek Goralski\nMake-up and Grooming by Bobana Parojcic\nHair stylist - Issac Poleon\nModel - Yusuf at Nii Agency\nFootwear - Suicoke", visibility: true, highlight: false, slug: "untitled", project_order: 1},
  {name: "Tate Britain", blurb: "DUVEEN GALLERIES COMMISSION'", description: "Production of animation video work as part of the Late at Tate series - \nIn response to Rasheed Araeen’s 1969 sculpture.\nProjected within the Duveen Galleries in and amongst a solo led garment making workshop.", visibility: true, highlight: false, slug: "tate", project_order: 3},
  {name: "Helmet - Like", blurb: "CAPSULE COLLECTION 05", description: "Photography by Richard and Hayley\nHair and Grooming by Olivia Davey \nModel - Todd Jennings \nFootwear - Reebok Classics UK", visibility: true, highlight: false, slug: "helmet-like", project_order: 4},
  {name: "One Three Eight - Trek", blurb: "CAPSULE COLLECTION 04", description: "An amalgamation of boyhood fantasy and hi-tech warrior-ware through 3d constructed headpiece sculpted work designed and illustrated on architectural design software such as 3ds max and maya. Hues of reds and black run throughout One Three Eight Trek.", visibility: true, highlight: false, slug: "one-three-eight-trek", project_order: 5},
  {name: "London - Parallel", blurb: "CAPSULE COLLECTION 03", description: "London Parallel - heavily influenced by digital culture. \nThis collection of handmade headpieces looks like a series of tribal masks from a geometric, colour-saturated future.\nThe headpieces are created using 3D software - a low polygon head shape is designed in 3ds Max, textures added in ZBrush, and then the wireframe design is put into a program that can read the facets as separate pattern pieces.\nUsing a screen printing technique in the hues of the RGB (Red, Green, Black) colour model.", visibility: true, highlight: false, slug: "london-parallel", project_order: 6},
  {name: "K.O.", blurb: "CAPSULE COLLECTION 02", description: "Knock-Out collection as part of the ‘ARRRGH!’ Monsters in Fashion exhibit at the Benaki Museum in Athens.\nPublication “Not a Toy” Fashioning Radical Characters.\nEdited by Atopos cvc. Published by Pictoplasma, Berlin.", visibility: true, highlight: false, slug: "knockout", project_order: 7},
  {name: "Trailblazing", blurb: "CAPSULE COLLECTION 06", description: "Photography by Nina Manandhar\nModel – Nimshi\nFootwear - Fila UK\nLeaves by Mother Nature", visibility: true, highlight: false, slug: "trailblazing", project_order: 2},
  {name: "Insectbite", blurb: "CAPSULE COLLECTION 01", description: "Sleeveless Jacket by Komakino\nStyles by Jamie Bull\nPhotography by Kim Jakobsen To\nHair by Charlie le Mindu\nMake-up Artist - Thomas de Kluyver\n Video stills captured by Dharma Taylor", visibility: true, highlight: false, slug: "insectbite", project_order: 8}
])

Image.create!([
  {project_id: 1, coverimage: true, nature: "archive", url: "01-archive_nwde0h", format: "landscape"},
  {project_id: 1, nature: "archive", url: "02-archive_yko12e", format: "landscape"},
  {project_id: 1, nature: "archive", url: "03-archive_mlhkhk", format: "landscape"},
  {project_id: 1, nature: "archive", url: "04-archive_qwsksy", format: "landscape"},
  {project_id: 1, nature: "archive", url: "05-archive_lnt2kb", format: "landscape"},
  {project_id: 1, nature: "archive", url: "06-archive_ayc6uo", format: "landscape"},
  {project_id: 1, nature: "archive", url: "07-archive_dtckqt", format: "landscape"},
  {project_id: 1, nature: "archive", url: "08-archive_pfse0u", format: "landscape"},
  {project_id: 1, nature: "archive", url: "09-archive_nylak6", format: "landscape"},
  {project_id: 1, nature: "archive", url: "10-archive_mchdan", format: "landscape"},
  {project_id: 1, nature: "archive", url: "11-archive_hvj3hl", format: "landscape"},
  {project_id: 1, nature: "archive", url: "12-archive_p5r6va", format: "landscape"},
  {project_id: 1, nature: "archive", url: "13-archive_x7omgu", format: "landscape"},
  {project_id: 1, nature: "archive", url: "14-archive_f25nul", format: "landscape"},
  {project_id: 1, nature: "archive", url: "15-archive_pycxmv", format: "landscape"},
  {project_id: 1, nature: "archive", url: "16-archive_cmyzeh", format: "landscape"},
  {project_id: 1, nature: "archive", url: "17-archive_xnnwf3", format: "landscape"},
  {project_id: 1, nature: "archive", url: "18-archive_ayqr32", format: "landscape"},
  {project_id: 1, nature: "archive", url: "19-archive_pbq7yl", format: "landscape"},
  {project_id: 1, nature: "archive", url: "20-archive_g5luar", format: "landscape"},
  {project_id: 1, nature: "archive", url: "21-archive_pposjl", format: "landscape"},
  {project_id: 1, nature: "archive", url: "22-archive_ayspf5", format: "landscape"},
  {project_id: 1, nature: "archive", url: "23-archive_xukm02", format: "landscape"},
  {project_id: 1, nature: "archive", url: "24-archive_sxi8pz", format: "landscape"},
  {project_id: 1, nature: "archive", url: "25-archive_nnlx0m", format: "landscape"},
  {project_id: 1, nature: "archive", url: "26-archive_v98m3j", format: "landscape"},
  {project_id: 1, nature: "archive", url: "27-archive_enhvbt", format: "landscape"},
  {project_id: 1, nature: "archive", url: "28-archive_zkebmb", format: "landscape"},
  {project_id: 1, nature: "archive", url: "29-archive_gqop6z", format: "landscape"},
  {project_id: 1, nature: "archive", url: "30-archive_alaoim", format: "landscape"},
  {project_id: 1, nature: "archive", url: "31-archive_lh03rv", format: "landscape"},
  {project_id: 1, nature: "archive", url: "32-archive_vxzwo3", format: "landscape"},
  {project_id: 1, nature: "archive", url: "33-archive_ino8ew", format: "landscape"},
  {project_id: 1, nature: "archive", url: "34-archive_opfc36", format: "landscape"},
  {project_id: 1, nature: "archive", url: "35-archive_qhlrss", format: "landscape"},
  {project_id: 1, nature: "archive", url: "36-archive_wmvw8a", format: "landscape"},
  {project_id: 9, coverimage: true, nature: "photo", url: "INSECTBITE_CAPSULE_COLLECTION_01_eqmmsc", format: "portrait"},
  {project_id: 9, nature: "photo", url: "02-photo-Insectbite_yq5nuk", format: "portrait"},
  {project_id: 5, nature: "photo", url: "05-photo-138trek_qdxwns", format: "landscape"},
  {project_id: 6, nature: "photo", url: "02-photo-London-Parallel_eayw3m", format: "landscape"},
  {project_id: 6, nature: "photo", url: "01-photo-London-Parallel_sglyqz", format: "landscape"},
  {project_id: 7, nature: "photo", url: "01-photo-Knockout_usmwkc", format: "landscape"},
  {project_id: 4, nature: "photo", url: "08-photo-Helmet-like_qx7enp", format: "portrait"},
  {project_id: 4, nature: "photo", url: "07-photo-Helmet-like_se2lxb", format: "portrait"},
  {project_id: 4, nature: "photo", url: "06-photo-Helmet-like_pawztv", format: "portrait"},
  {project_id: 4, nature: "photo", url: "05-photo-Helmet-like_artxjq", format: "portrait"},
  {project_id: 4, coverimage: true, nature: "photo", url: "HELMET_-_LIKE_CAPSULE_COLLECTION_05_w8twcl", format: "portrait"},
  {project_id: 4, nature: "photo", url: "03-photo-Helmet-like_auogvm", format: "portrait"},
  {project_id: 4, nature: "photo", url: "02-photo-Helmet-like_vu0ecw", format: "portrait"},
  {project_id: 4, nature: "photo", url: "01-photo-Helmet-like_ez9ctm", format: "portrait"},
  {project_id: 8, nature: "photo", url: "04-photo-Trailblazing_ifcjtd", format: "portrait"},
  {project_id: 8, nature: "photo", url: "03-photo-Trailblazing_zzfyty", format: "portrait"},
  {project_id: 8, nature: "photo", url: "02-photo-Trailblazing_xf0ubc", format: "portrait"},
  {project_id: 8, coverimage: true, nature: "photo", url: "TRAILBLAZING_CAPSULE_COLLECTION_06_mf7x0z", format: "portrait"},
  {project_id: 9, nature: "printable", url: "03-print-Insectbite_tt80gn", format: "landscape"},
  {project_id: 9, nature: "printable", url: "04-print-Insectbite_yssvih", format: "landscape"},
  {project_id: 7, nature: "printable", url: "07-print-Knockout_oacszw", format: "landscape"},
  {project_id: 7, nature: "printable", url: "06-print-Knockout_wrtdun", format: "landscape"},
  {project_id: 4, nature: "printable", url: "10-print-Helmet-like_c2c8lr", format: "landscape"},
  {project_id: 4, nature: "printable", url: "09-print-Helmet-like_t9n8r4", format: "landscape"},
  {project_id: 8, nature: "printable", url: "06-print-Trailblazing_q8nhyu", format: "landscape"},
  {project_id: 8, nature: "printable", url: "05-print-Trailblazing_dyejjr", format: "landscape"},
  {project_id: 9, nature: "videostill", url: "05-insectbite-video-still_evcy3j", format: "landscape"},
  {project_id: 9, nature: "videostill", url: "06-insectbite-video-still_dxwrpv", format: "landscape"},
  {project_id: 9, nature: "videostill", url: "07-insectbite-video-still_zjenbf", format: "landscape"},
  {project_id: 9, nature: "videostill", url: "08-insectbite-video-still_z7sauc", format: "landscape"},
  {project_id: 7, nature: "videostill", url: "05-videostill-Knockout_ph8jpl", format: "landscape"},
  {project_id: 7, nature: "videostill", url: "04-videostill-Knockout_j1pxke", format: "landscape"},
  {project_id: 7, nature: "videostill", url: "03-videostill-Knockout_ph9sg1", format: "landscape"},
  {project_id: 7, coverimage: true, nature: "videostill", url: "K.O_CAPSULE_COLLECTION_02_mqdjp7", format: "landscape"},
  {project_id: 3, coverimage: true, nature: "videostill", url: "TATE_BRITAIN_DUVEEN_GALLERIES_COMMISSION_16_yvq0p4", format: "landscape"},
  {project_id: 3, nature: "videostill", url: "07-videosill-tate_zpxcwi", format: "landscape"},
  {project_id: 3, nature: "videostill", url: "06-videosill-tate_owm3jd", format: "landscape"},
  {project_id: 3, nature: "videostill", url: "05-videosill-tate_tkjaok", format: "landscape"},
  {project_id: 3, nature: "videostill", url: "04-videosill-tate_kq3vqv", format: "landscape"},
  {project_id: 2, nature: "videostill", url: "03-videosill-tate_fteysa", format: "landscape"},
  {project_id: 3, nature: "videostill", url: "02-videosill-tate_rajhbf", format: "landscape"},
  {project_id: 3, nature: "videostill", url: "01-videosill-tate_s3mptd", format: "landscape"},
  {project_id: 6, nature: "videostill", url: "07-videostill-London-Parallel_p0ko44", format: "landscape"},
  {project_id: 6, nature: "videostill", url: "06-videostill-London-Parallel_anx2ym", format: "landscape"},
  {project_id: 6, nature: "videostill", url: "05-videostill-London-Parallel_chbfke", format: "landscape"},
  {project_id: 6, coverimage: true, nature: "videostill", url: "04-videostill-London-Parallel_qvlqbq", format: "landscape"},
  {project_id: 6, nature: "videostill", url: "03-videostill-London-Parallel_ao3fsb", format: "landscape"},
  {project_id: 5, coverimage: true, nature: "photo", url: "ONE_THREE_EIGHT_-_TREK_CAPSULE_COLLECTION_04_guilc4", format: "landscape"},
  {project_id: 5, nature: "photo", url: "03-photo-138trek_vejbta", format: "landscape"},
  {project_id: 5, nature: "photo", url: "02-photo-138trek_cafazz", format: "landscape"},
  {project_id: 5, nature: "photo", url: "01-photo-138trek_tviwem", format: "landscape"},
  {project_id: 2, nature: "photo", url: "01-UntitledCollection_sdnfpj", format: "portrait"},
  {project_id: 2, nature: "photo", url: "02-UntitledCollection_t2m3yv", format: "portrait"},
  {project_id: 2, nature: "photo", url: "03-UntitledCollection_doi78v", format: "portrait"},
  {project_id: 2, nature: "photo", url: "04-UntitledCollection_ytoul3", format: "portrait"},
  {project_id: 2, nature: "photo", url: "05-UntitledCollection_ro6lk0", format: "portrait"},
  {project_id: 2, nature: "photo", url: "06-UntitledCollection_ljtoyw", format: "portrait"},
  {project_id: 2, coverimage: true, nature: "photo", url: "UNTITLED_CAPSULE_COLLECTION_07_jojed1", format: "portrait"},
  {project_id: 2, nature: "photo", url: "08-UntitledCollection-Cool-Ruler_ybxpqr", format: "portrait"}
])

Image.all.each do |img|
  url = "https://res.cloudinary.com/ortsac/image/upload/" + img.url
  img.update!(url: url)
end

footer = Footer.new(
  telephone_contact: "+44 (0) 754 713 68 08",
  email_primary: "studio@dharmataylor.com",
  email_contact: "dharmataylorcontact@gmail.com",
  location: "London, UK",
  social_media: {
    "ig/" => "https://www.instagram.com/dharmataylor/?hl=en",
    "tb/" => "https://dharma-taylor.tumblr.com/"
  }
)

footer.save!

about = Information.new
about.update!(about:
"London-born Dharma Taylor graduated from the London College of Fashion with a Masters in Fashion Design Technology - Menswear, in 2010.

Since graduating from Rochester University in 2008 and completing her Masters in menswear she has worked on various artistic fashion projects. They’ve been shown by a variety of national and international organisations and galleries including the Benaki Museum in Athens, the V&A and Tate Britain. The concept driven collections are inspired by literary figures such as Franz Kafka and ideas of Hyper-reality.


‘Knowing… Knowing that there’s a knowledge out there to be attained.

Literary references in Fashion is always good, and something I do often but not obviously. I blend my own Graphic Design into it and progress this to motion graphics, which leads to film/video and print work for textiles.’


What compelled you into becoming a designer?


I’ve always felt a strong urge to create. I don’t know where it comes from. It’s like the one magic thing we can do; to make things. The reason for wanting to create is unknown to me. The more I think about what it is that compels me , the more it disappears and becomes harder to grasp. It’s just a natural thing.


What are the key references you revisit in your work?


One thing in particular that I always come back to is the notion of separate realities and parallel lands. I like to explore the possibility of this as best I can with the tools I have. I took time to study Baudrillard's theory Hyperreality and found that the concept of what is real and what is simulation is closely linked with the dream world; something which I integrate into the construction of my work. I try to translate this through the use of signs and symbols, aka semiotics. It’s a communicated language translated. Like patterns in a song. The sublime baseline rolls of the drums in a track, like the lines of an outfit., or the gradation of hue in a print, or a headpiece from the other side. I tend to think if I can merge real with simulation then it becomes poetry and almost transcendental.


How do new technologies affect your work?


Yeah, so there’s loads of new technologies now, but I guess there’ll always be new technologies - And I’m not totally sure we know what we’re doing with it, or trying to say with it. Never-the-less it’s an enhancement, an extra part in the mechanics of the hyper-reality thing. Although this digital age all seems very new and far away from the past ; I think it’s eventually going to bring us back to our original selves. Personally, new tech’s have changed the process of my work, for instance I don’t sketch any more with bare pen and paper, I tend to go straight to the computer and design on 3D platforms such as Autodesk for instance : 3DS Max and ZBrush. This is all very good, but I think what if this technology and programming is taken away from us? I’d like to get back to the primitive ways of doing things.


What does it take to be a Londoner?


There’s a lot of vibrations rattling around the city good and bad, sometimes they get trapped between the grey buildings and you pick them up unknowingly. They get passed around, bounce off the high-rises at Liverpool Street back down to the other side of the river… It takes an individual who behaves similar to water to be a Londoner. London as a city is forever pushing forward. Peter Ackroyd; the greatest living London chronicler once said something like there’s an atmospheric presence to London streets, like a whole history that ever was, that you’re joining and becoming a part of.


Interview by Mairi Hare")

puts "\n\nSeeded successfully!\n\n"
