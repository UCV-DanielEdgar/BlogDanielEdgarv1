Feature: Administer articles
  So that I can manage articles
  As an admin
  I want to be able to add, delete and edit articles

  Scenario: Adding an article
    Given there is no article with the title "Hello world!"
    And I am on the articles page
    When I follow "Agregar articulo"
    And I fill in "Title" with "Hello world!"
    And I fill in "Content" with "spam spam spam"
    And I press "Guardar"
    Then I should be on the article show page for "Hello world!"
    And I should see "El articulo ha sido guardado"
    And I should see "Hello world!"
    And I should see "spam spam spam"
    And I should see "Volver a artículos"
    And I should see "Hello world!" on the articles list

  Scenario: Adding an article with a duplicate title
    Given an article with the title "Hello world!"
    And I am on the articles page
    When I follow "Agregar articulo"
    And I fill in "Title" with "Hello world!"
    And I press "Guardar"
    And I should not see "El articulo ha sido guardado"

  Scenario: Adding an article without a title
    Given I am on the articles page
    When I follow "Agregar articulo"
    And I press "Guardar"
    Then I should not see "El articulo ha sido guardado"

  Scenario: Deleting an article
    Given an article with the title "Hello world!"
    And I am on the articles page
    When I follow "Hello world!"
    And I follow "Eliminar"
    Then I should be on the articles page
    And I should see "El articulo ha sido eliminado"
    And I should not see "Hello world!"

  Scenario: Editing the title of an article
    Given an article with the title "Hello world!"
    And I am on the articles page
    When I follow "Hello world!"
    And I follow "Editar"
    And I fill in "Title" with "No more hello world!"
    And I press "Guardar"
    Then I should be on the article show page for "No more hello world!"
    And I should see "El articulo ha sido actualizado"
    And I should see "No more hello world!"
    And I should see "No more hello world!" on the articles list
    But I should not see "Hello world!" on the articles list

  Scenario: Editing the content of an article
    Given an article with the title "Hello world!"
    And I am on the articles page
    When I follow "Hello world!"
    And I follow "Editar"
    And I fill in "Content" with "este no es el contenido original"
    And I press "Guardar"
    Then I should be on the article show page for "Hello world!"
    And I should see "El articulo ha sido actualizado"
    And I should see "este no es el contenido original"

