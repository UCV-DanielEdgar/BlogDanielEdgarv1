Feature: User authentication
  So that I am registrated
  As an user
  I want tobe able to sign in and sign out

  Scenario: Ver una lista de articulos 
    Given an article with the title "La respuesta a todas las preguntas"
    And I am not authenticated
    When I am on the articles page
    Then I should see "Ingresar"

 Scenario: Cerrar sesion
    Given I am authenticated
    And I am on the articles page
    When I follow "Cerrar Sesion"
    Then I should see "Ingresar"

 Scenario: Agregar articulo
    Given I am not authenticated
    And I am on the articles page
    When I go to new page
    Then I should be on sign in page
