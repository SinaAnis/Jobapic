a suppppppppppppprimer

<?php
    try {
        // connection to the database.
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO('mysql:host=localhost;dbname=AdvancedAndroidDevelopment', 'root', 'root', $pdo_options);

        // Execute SQL request on the database.
        $sql = 'SELECT id, name, type, price FROM product;';
        $response = $bdd->query($sql);
        $output = $response->fetchAll(PDO::FETCH_ASSOC));
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    // Print JSON encode of the array.
    echo(json_encode($output));
?>
