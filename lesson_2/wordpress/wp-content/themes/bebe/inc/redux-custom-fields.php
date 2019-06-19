<?php
  Redux::setSection( $opt_name, array(
      'title'            => __( 'Header & Footer', 'bebe' ),
      'id'               => 'basic',
      'desc'             => __( 'These are really basic fields!', 'bebe' ),
      'customizer_width' => '400px',
      'icon'             => 'el el-home'
  ) );

    // Header data
    Redux::setSection( $opt_name, array(
        'title'            => __( 'Logo data', 'bebe' ),
        'desc'             => __( 'Upload your specify slogan text ', 'bebe' ),
        'id'               => 'site-logos',
        'subsection'       => true,
        'customizer_width' => '700px',
        'fields'           => array(
            array(
                'id'       => 'bebelogo',
                'type'     => 'media',
                'url'      => true,
                'title'    => __( 'Logo', 'bebe' ),
                'subtitle' => __( 'Upload main logo', 'bebe' ),
                'desc'     => __( 'Recommended size: 320px-110px', 'bebe' ),
                'default'  => '',
            ),
            array(
                'id'        => 'bebelogosmall',
                'type'      => 'media',
                'url'       => true,
                'title'     => __( 'Logo mobile', 'bebe' ),
                'subtitle'  => __( 'Upload small logo', 'bebe' ),
                'desc'      => __( 'Recommended size: 200px-70px', 'bebe' ),
                'default'   => '',
            ),
            array(
                'id'        => 'bebefooterlogo',
                'type'      => 'media',
                'url'       => true,
                'title'     => __( 'Footer logo', 'bebe' ),
                'subtitle'  => __( 'Upload your logo', 'bebe' ),
                'desc'      => __( 'Recommended size: 78px-73px', 'bebe' ),
                'default'   => '',
            ),
            array(
                'id'          => 'bebeslogan',
                'type'        => 'text',
                'title'       => __( 'Slogan', 'bebe' ),
                'subtitle'    => __( 'Type here your slogan', 'bebe' ),
                'desc'        => __( 'Your slogan', 'bebe' ),
                'placeholder' => __('Slogan text here')
            ),

        )
    ) );

    // Social
    Redux::setSection( $opt_name, array(
        'title'            => __( 'Social links', 'bebe' ),
        'desc'             => __( 'Type here your social links', 'bebe' ),
        'id'               => 'site-social',
        'subsection'       => true,
        'customizer_width' => '700px',
        'fields'           => array(
            array(
                'id'       => 'fb',
                'type'     => 'text',
                'title'    => __( 'Facebook Link', 'bebe' ),
                'subtitle' => __( 'Type here your link', 'bebe' ),
                'desc'     => __( 'Your profile link', 'bebe' ),
                'default'  => '',
            ),
            array(
                'id'       => 'insta',
                'type'     => 'text',
                'title'    => __( 'Instagram Link', 'bebe' ),
                'subtitle' => __( 'Type here your link', 'bebe' ),
                'desc'     => __( 'Your profile link', 'bebe' ),
                'default'  => '',
            ),
            array(
                'id'       => 'pint',
                'type'     => 'text',
                'title'    => __( 'Pinterest Link', 'bebe' ),
                'subtitle' => __( 'Type here your link', 'bebe' ),
                'desc'     => __( 'Your profile link', 'bebe' ),
                'default'  => '',
            ),
            array(
                'id'       => 'tw',
                'type'     => 'text',
                'title'    => __( 'Twitter Link', 'bebe' ),
                'subtitle' => __( 'Type here your link', 'bebe' ),
                'desc'     => __( 'Your profile link', 'bebe' ),
                'default'  => '',
            ),
            array(
                'id'       => 'yt',
                'type'     => 'text',
                'title'    => __( 'Youtube Link', 'bebe' ),
                'subtitle' => __( 'Type here your link', 'bebe' ),
                'desc'     => __( 'Your profile link', 'bebe' ),
                'default'  => '',
            ),
        )
    ) );

    // Main slider
    Redux::setSection( $opt_name, array(
        'title'      => __( 'Home slider', 'redux-framework-demo' ),
        'id'         => 'home-slider',
        'desc'       => __( 'For full documentation on this field, visit: ', 'bebe' ),
        'subsection' => true,
        'fields'     => array(
            array(
                'id'          => 'homepageslide',
                'type'        => 'slides',
                'title'       => __( 'Slides Options', 'bebe' ),
                'subtitle'    => __( 'Unlimited slides with drag and drop sortings.', 'bebe' ),
                'desc'        => __( 'This field will store all slides values into a multidimensional array to use into a foreach loop.', 'bebe' ),
                'placeholder' => array(
                    'title'       => __( 'This is a title', 'bebe' ),
                    'description' => __( 'Description Here', 'bebe' ),
                    'url'         => __( 'Give us a link!', 'bebe' ),
                ),
            ),
        )
    ) );

    // Footer data
    Redux::setSection( $opt_name, array(
        'title'            => __( 'Footer data', 'bebe' ),
        'desc'             => __( 'Upload your specify slogan text ', 'bebe' ),
        'id'               => 'footer-data',
        'subsection'       => true,
        'customizer_width' => '700px',
        'fields'           => array(
            array(
                'id'          => 'bebefooternav',
                'type'        => 'text',
                'title'       => __( 'Footer nav title', 'bebe' ),
                'subtitle'    => __( 'Type here footer nav title', 'bebe' ),
                'desc'        => __( 'Footer nav title', 'bebe' ),
                'default' => 'Information'
            ),
            array(
                'id'          => 'bebefootercontacts',
                'type'        => 'text',
                'title'       => __( 'Footer contacts title', 'bebe' ),
                'subtitle'    => __( 'Type here footer contacts title', 'bebe' ),
                'desc'        => __( 'Footer contacts title', 'bebe' ),
                'default' => 'Contacst'
            ),
            array(
                'id'          => 'bebephone',
                'type'        => 'text',
                'title'       => __( 'Phone', 'bebe' ),
                'subtitle'    => __( 'Type here your phone', 'bebe' ),
                'desc'        => __( 'Your phone', 'bebe' ),
                'default' => ''
            ),
            array(
                'id'          => 'bebeemail',
                'type'        => 'text',
                'title'       => __( 'Email', 'bebe' ),
                'subtitle'    => __( 'Type here your email', 'bebe' ),
                'validate' => 'email',
                'msg'      => 'Wrong message',
                'desc'        => __( 'Your email', 'bebe' ),
                'default' => ''
            ),
            array(
                'id'          => 'bebeaddress',
                'type'        => 'text',
                'title'       => __( 'Address', 'bebe' ),
                'subtitle'    => __( 'Type here your address', 'bebe' ),
                'desc'        => __( 'Your address', 'bebe' ),
                'default' => ''
            ),
            array(
                'id'       => 'copyrights',
                'type'     => 'editor',
                'title'    => __( 'Copyrights', 'redux-framework-demo' ),
                'subtitle' => __( 'Type yor copyright', 'bebe' ),
                'default'  => '',
            ),
            array(
                'id'       => 'bebeformshortcode',
                'type'     => 'text',
                'title'    => __( 'Form shortcode', 'redux-framework-demo' ),
                'subtitle' => __( 'Type here the form shortcode', 'bebe' ),
                'desc'     => __( 'Type the Shortcode from CF7 plugin', 'bebe'),
                'default'  => '',
            ),

        )
    ) );
?>