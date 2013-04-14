<?php

class GradosController extends AppController {
  public $helper = array('Html', 'Form');

  public function index() {
    $this -> set('profesores', $this -> ConsejoAcademico -> find('all'));
  }
}
