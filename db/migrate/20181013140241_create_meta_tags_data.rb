class CreateMetaTagsData < ActiveRecord::Migration[5.1]
  def change
    mt = MetaTag.find_by_page('/') || MetaTag.new(page: '/')
    mt.title = 'Dharma Taylor'
    mt.keywords = 'home'
    mt.description = 'London-born fashion designer Dharma Taylor graduated from Rochester University and the London College of Fashion with a masters in menswear. She has worked on various artistic fashion projects which have been shown by a variety of national and international organisations including the Benaki Museum in Athens, the V&A and Tate Britain'
    mt.save

    mt = MetaTag.find_by_page('/featured/insectbite') ||  MetaTag.new(page: '/featured/insectbite')
    mt.title = 'Insectbite'
    mt.keywords = 'Insectbite'
    mt.description = 'Insectbite presented through a short animation, screened as part of Twosee’s London Fashion Week shop window film project. The new collection came about through Dharma Taylor being inspired by "these shallow times" and the introspection of the self. The prints created with old style Teletext colours is Dharma’s self-constructed code and structure; "I and I, the vision of a bee, am attracted to that RGB.\"'
    mt.save

    mt = MetaTag.find_by_page('/featured/knockout') || MetaTag.new(page: '/featured/knockout')
    mt.title = 'Knockout'
    mt.keywords = 'Knockout'
    mt.description = 'Through previous collections such as Purple Haze and the current Knock-Out as part of the ‘ARRRGH!’ Monsters in Fashion exhibit at the Benaki Museum in Athens, Dharma Taylor has pushed her characteristic style of graphic print work.'
    mt.save

    mt = MetaTag.find_by_page('/featured/london-parallel') || MetaTag.new(page: '/featured/london-parallel')
    mt.title = 'london Parallel'
    mt.keywords = 'London Parallel'
    mt.description = 'Dharma Taylor presents London Parallel, as straight forward primary colours and geometric shapes form patterns that look like they are reflected over and over again in a kaleidoscope are then printed onto relaxed t-shirts, trousers and boilersuits.'
    mt.save

    mt = MetaTag.find_by_page('/featured/') || MetaTag.new(page: '/featured')
    mt.title = 'Featured'
    mt.keywords = 'Featured'
    mt.description = 'We design and develop web and mobile applications for the financial, telecoms, health, education, leisure, social, travel and ecommerce sectors'
    mt.save

    mt = MetaTag.find_by_page('/featured/one-three-eight-trek') || MetaTag.new(page: '/featured/one-three-eight-trek')
    mt.title = 'One Three Eight Trek'
    mt.keywords = 'One Three Eight Trek'
    mt.description = 'Red and black 3d constructed headpieces designed and rendered by hand as part of a series of giant wearable print saturated masks or busts.'
    mt.save

    mt = MetaTag.find_by_page('/featured/helmet-like') || MetaTag.new(page: '/featured/helmet-like')
    mt.title = 'Helmet Like'
    mt.keywords = 'Helmet Like'
    mt.description = 'Multi coloured 3d bespoke print work features in Dharma Taylor’s capsule collection entitled Helmet-Like. Model Todd Jennings, Footwear Reebok Classics UK.'
    mt.save

    mt = MetaTag.find_by_page('/featured/tate') || MetaTag.new(page: '/featured/tate')
    mt.title = 'Tate'
    mt.keywords = 'Tate'
    mt.description = 'Production of animation video work as part of the Late at Tate series - In response to Rasheed Araeen’s 1969 sculpture entitled Rang Baranga.'
    mt.save

    mt = MetaTag.find_by_page('/featured/trailblazing') || MetaTag.new(page: '/featured/trailblazing')
    mt.title = 'Trailblazing'
    mt.keywords = 'Trailblazing'
    mt.description = 'Double collar fire hem button down shirt with classic cut printed padded coat. The Trailblazing capsule collection, Photography by Nina Manandhar Model Nimshi, Footwear Fila UK'
    mt.save

    mt = MetaTag.find_by_page('/featured/untitled') || MetaTag.new(page: '/featured/untitled')
    mt.title = 'Untitled'
    mt.keywords = 'Untitled'
    mt.description = 'Presenting Dharma Taylor’s latest capsule collection with Photography by Edek Goralski, Grooming by Bobana Parojcic, Hair stylist Issac Poleon, Model Yusuf at Nii Agency, Footwear by Suicoke.'
    mt.save

    mt = MetaTag.find_by_page('/information') || MetaTag.new(page: '/information')
    mt.title = 'Information'
    mt.keywords = 'Information'
    mt.description = 'Dharma Taylor’s concept driven collections are inspired by literary figures such as Franz Kafka and ideas of Hyper-reality.'
    mt.save

    mt = MetaTag.find_by_page('/archive') || MetaTag.new(page: '/archive')
    mt.title = 'Archive'
    mt.keywords = 'Archive'
    mt.description = 'Browse Dharma Taylor’s visual series of 3D moving image stills based on sculpture. Embroidered headpiece front-hanging sweatshirts and hand-printed film stills, weaving scenes from vids made parallel to the clothes.'
    mt.save

    mt = MetaTag.find_by_page('/featured') || MetaTag.new(page: '/featured')
    mt.title = 'Featured'
    mt.keywords = 'Work, Clients, Where we are'
    mt.description = 'Discover Dharma Taylor’s latest projects and browse the artistic brand\'s classics.'
    mt.save
  end
end
