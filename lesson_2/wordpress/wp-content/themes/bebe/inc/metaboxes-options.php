<?php

  function aletheme_metaboxes($meta_boxes) {
    
    $meta_boxes = array();

    $prefix = "bebe_";


    $meta_boxes[] = array(
        'id'         => 'homepage_metabox',
        'title'      => 'Homepage Meta Options',
        'pages'      => array( 'page', ), // Post type
        'context'    => 'normal',
        'priority'   => 'high',
        'show_names' => true, // Show field names on the left
        'show_on'    => array( 'key' => 'page-template', 'value' => array('template-homepage.php'), ), // Specific post templates to display this metabox

        'fields' => array(
            array(
                'name' => __('About Us Image', 'bebe'),
                'desc' => 'Upload your image: Recommended size 254px-168px',
                'id'   => $prefix . 'about-image',
                'type' => 'file',
            ),
            array(
                'name' => __('About Us Title', 'bebe'),
                'desc' => 'Type here the title',
                'id'   => $prefix . 'about-title',
                'type' => 'text',
            ),
            array(
                'name' => __('About Us Description', 'bebe'),
                'desc' => 'Insert the text',
                'std'  => '',
                'id'   => $prefix . 'about-desc',
                'type' => 'wysiwyg',
            ),
            array(
                'name' => __('About Us Link', 'bebe'),
                'desc' => 'Type here the link',
                'id'   => $prefix . 'about-link',
                'type' => 'text',
            ),

            array(
                'name' => 'Info img 1',
                'desc' => 'Upload info 1 img',
                'id'   => $prefix . 'info-1-img',
                'type' => 'file',
            ),
            array(
                'name' => __('Info Title 1', 'bebe'),
                'desc' => 'Type here the info title 1',
                'id'   => $prefix . 'info-title-1',
                'type' => 'text',
            ),
            array(
                'name' => __('Info Description 1', 'bebe'),
                'desc' => 'Type here the info description 1',
                'id'   => $prefix . 'info-desc-1',
                'type' => 'text',
            ),

            array(
                'name' => 'Info img 2',
                'desc' => 'Upload info 2 img',
                'id'   => $prefix . 'info-2-img',
                'type' => 'file',
            ),
            array(
                'name' => __('Info Title 2', 'bebe'),
                'desc' => 'Type here the info title 2',
                'id'   => $prefix . 'info-title-2',
                'type' => 'text',
            ),
            array(
                'name' => __('Info Description 2', 'bebe'),
                'desc' => 'Type here the info description 2',
                'id'   => $prefix . 'info-desc-2',
                'type' => 'text',
            ),

            array(
                'name' => 'Info img 3',
                'desc' => 'Upload info 3 img',
                'id'   => $prefix . 'info-3-img',
                'type' => 'file',
            ),
            array(
                'name' => __('Info Title 3', 'bebe'),
                'desc' => 'Type here the info title 3',
                'id'   => $prefix . 'info-title-3',
                'type' => 'text',
            ),
            array(
                'name' => __('Info Description 3', 'bebe'),
                'desc' => 'Type here the info description 3',
                'id'   => $prefix . 'info-desc-3',
                'type' => 'text',
            ),
        )
    );

    return $meta_boxes;
  }