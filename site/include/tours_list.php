<?php
    //place
    if (empty($_POST['place']))
    {
        $place="1";
    }
    else
    {
        $place="typetour.name_typetour IN (";
        foreach($_POST['place'] as $places)
        {
            $place .= "'".$places."', ";
        }
        $place = substr($place,0, -2);
        $place .= ") ";
    }

    //time
    if (empty($_POST['time_low']) || empty($_POST['time_high']))
    {
        $time="1";
    }
    else
    {
        $time="tour.intduration_tour >= ".$_POST['time_low']." AND tour.intduration_tour <= ".$_POST['time_high'];
    }

    //age
    if (empty($_POST['age']))
    {
        $age="1";
    }
    else
    {
        $age="tour.age_tour IN (";
        foreach($_POST['age'] as $ages)
        {
            $age .= "'".$ages."', ";
        }
        $age = substr($age,0, -2);
        $age .= ") ";
    }

    //price
    if (empty($_POST['price_low']) || empty($_POST['price_high']))
    {
        $price="1";
    }
    else
    {
        $price="tour.price_tour >= ".$_POST['price_low']." AND tour.price_tour <= ".$_POST['price_high'];
    }
    $query = "SELECT tour.id_tour, tour.name_tour, tour.price_tour, typetour.name_typetour, tour.duration_tour, tour.desc_tour, tour.img_tour 
        FROM `tour`
        LEFT JOIN `typetour` ON tour.id_typetour=typetour.id_typetour
        WHERE $place AND $time AND $age AND $price";
    include ("connect.php");
    $link = mysqli_connect($host, $user, $password, $db_name); 
    $result = mysqli_query($link, $query);
    $link->close();
    if($result == false) {
        die("Произошла ошибка при выполнении запроса " . $query); 
    }
    else {
        for ($data = []; $row = mysqli_fetch_assoc($result); $data[] = $row);
        $compare = "";
        if(empty($data))
        {
            echo"Извините, по вашим параметрам ничего не найдено";
        }
        else
        {
            foreach ($data as $row) {
                echo 
                    "
                    <div class='tour' style='background: url($row[img_tour]); background-size: cover; background-repeat: no-repeat; background-position: center;' onclick='transition($row[id_tour])'>
                        <div class='tour_place'>$row[name_typetour]</div>
                        <div class='tour_info'>
                            <div class='flex jc_space-between'>
                                <div class='tour_info_name'>$row[name_tour]</div>
                                <div>
                                    <div class='tour_info_time'>$row[duration_tour]</div>
                                    <div class='tour_info_price'>$row[price_tour]₽</div>
                                </div>
                            </div>
                            <div class='tour_desc'>$row[desc_tour]</div>
                        </div>
                    </div>
                    ";
            }       
        }
    }
?>

<script>
    function transition(id) {
        $( "main" ).load( "include/tour_description.php", {id: id} );
        window.scrollTo(0, 0);
    }
</script>