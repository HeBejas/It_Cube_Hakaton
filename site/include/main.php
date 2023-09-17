<main>
    <!-- Медиа Убрать -->
    <div class="hero">
        <div class="hero_title">
            <div>«ИЖГОУ»</div>
            <div>ЛУЧШИЕ ТУРЫ УДМУРТИИ</div>
        </div>
    </div>
    <div class="popular_tours_title">Популярные туры</div>
    <!-- ---------- -->
    <!-- Медиа Убрать -->
    <div class="media_hidden second_popular_tours_title">
        Популярные туры
    </div>
    <!-- ---------- -->
    <div class="container">
        <div class="popular_tours">
            <div class="container">
                <div class="popular_tours_list">
                    <?php
                        $query = "SELECT tour.id_tour, tour.name_tour, tour.price_tour, typetour.name_typetour, tour.duration_tour, tour.desc_tour, tour.img_tour 
                            FROM `tour`
                            LEFT JOIN `typetour` ON tour.id_typetour=typetour.id_typetour
                            WHERE 1
                            ORDER BY tour.datestart_tour ASC
                            LIMIT 3";
                        include ("connect.php");
                        $link = mysqli_connect($host, $user, $password, $db_name); 
                        $result = mysqli_query($link, $query);
                        $link->close();
                        if($result == false) {
                            die("Произошла ошибка при выполнении запроса"); 
                        }
                        else {
                            for ($data = []; $row = mysqli_fetch_assoc($result); $data[] = $row);
                            $compare = 1;
                            foreach ($data as $row) {
                                if ($compare == 1)
                                {
                                echo 
                                    "
                                    <div class='tour most_popular_tour' style='background: url($row[img_tour]); background-size: cover; background-repeat: no-repeat; background-position: center;' onclick='transition($row[id_tour])'>
                                    ";
                                $compare = 0;
                                }
                                else{
                                echo 
                                    "
                                    <div class='tour' style='background: url($row[img_tour]); background-size: cover; background-repeat: no-repeat; background-position: center;' onclick='transition($row[id_tour])'>
                                    ";
                                }
                                echo 
                                    "
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
                    ?>
                    <div class="all_tours">
                        <a class="btn_all_tours" href="tours.php">Все Туры</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    document.getElementById("home").classList.add("btn_header_active");
    function transition(id) {
        $( "main" ).load( "include/tour_description.php", {id: id} );
        window.scrollTo(0, 0);
    }
</script>