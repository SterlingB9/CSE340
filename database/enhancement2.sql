INSERT INTO client (client_firstname, client_lastname, client_email, client_password)
    Values ('Tony',
    'Stark',
    'tony@starkent.com',
    'Iam1ronM@n' );

DELETE FROM client WHERE client_id = 1;

-- replace hummer description text
UPDATE
    inventory
SET
    inv_description = REPLACE (
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE
    inv_id = 10;

-- display all sport models
SELECT
    inv_make,
    inv_model,
    classification_name
FROM
    inventory
INNER JOIN classification
    ON inventory.classification_id = classification.classification_id
    WHERE inventory.classification_id = 2;

-- Update inventory table
UPDATE
    inventory
SET
    inv_image = REPLACE(
        inv_image,
        '/images',
        '/images/vehicles'
    ),
    inv_thumbnail = REPLACE(
        inv_thumbnail,
        '/images',
        '/images/vehicles'
    );