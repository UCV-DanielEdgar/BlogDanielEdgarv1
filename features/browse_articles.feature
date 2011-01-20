Feature: Browse articles
 So that I can browse through the articles
 As a visitor
 I want to be able to choose an article from a full list of articles and read it

 Scenario: Browsing a list of articles
   Given an article with the title "La respuesta a todas las preguntas" 
   And an article with the title "Nuevo lorem ipsum"
   When I am on the articles page
   Then I should see "La respuesta a todas las preguntas" 
   And I should see "Nuevo lorem ipsum"

 Scenario: Reading an article
   Given an article with the title "La respuesta a todas las preguntas" and the content "no hay tal cosa"
   When I am on the articles page
   And I follow "La respuesta a todas las preguntas"
   Then I should see "La respuesta a todas las preguntas"
   And I should see "no hay tal cosa"
   And I should see "Volver a artículos"
