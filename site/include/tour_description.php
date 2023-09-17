<?php
	if(!isset($_POST)) {
		die("Ошибка соединения. Пожалуйста обратитесь к администрации.");
	}
	$id = $_POST['id'];
	include 'connect.php';
	$link = mysqli_connect($host, $user, $password, $db_name);
	$tour = $link->query("SELECT tour.name_tour, tour.price_tour, tour.datestart_tour, tour.timestart_tour, tour.duration_tour, tour.desc_tour, tour.age_tour, tour.img_tour, typetour.name_typetour, touroperator.name_touroperator, touroperator.surname_touroperator, touroperator.patronymic_touroperator, touroperator.phone_touroperator, touroperator.img_touroperator, touroperator.desc_touroperator FROM `tour` LEFT JOIN `typetour` ON tour.id_typetour = typetour.id_typetour LEFT JOIN `touroperator` ON tour.id_touroperator = touroperator.id_touroperator WHERE tour.id_tour = '$id'")->fetch_assoc();
	$stops = $link->query("SELECT stop.name_stop, stop.desc_stop, stop.img_stop FROM `tour_stop` LEFT JOIN `stop` ON tour_stop.id_stop = stop.id_stop WHERE tour_stop.id_tour = '$id'");
	$link->close();
	if(empty($tour) /* || empty($stops) */) {
		die("Ошибка соединения. Пожалуйста обратитесь к администрации.");
	}
	$months = ["января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"];
	$date = strtotime($tour["datestart_tour"]);
	$tour["datestart_tour"] = date("j", $date) . ' ' . $months[date("n", $date)-1] . ' ' . date("Y", $date) . 'г.';
	$tour["timestart_tour"] = substr($tour["timestart_tour"], 0, 5);
?>
<dialog id="dialog_signup"class="modal">
	<span id="dialog_signup_close">✖</span>
	<div class="form_title">Форма записи на путешествие</div>
	<div class="form_tour_info">
		<p>
			<span>Наименование:</span> <?=$tour["name_tour"]?>
		</p>
		<p>
			<span>Дата:</span> <?=$tour["datestart_tour"] . ' ' . $tour["timestart_tour"]?>
		</p>
		<p>
			<span>Цена:</span> <?=$tour["price_tour"]?>₽
		</p>
	</div>
	<div id="form_load">
		<form id="form_signup">
			<div class="form_client_info">
				<div class="form_input_wrapper">
					<label for="surname">Фамилия</label>
					<input id="surname" name="surname" type="text" maxlength="40" required>
				</div>
				<div class="form_input_wrapper">
					<label for="name">Имя</label>
					<input id="name" name="name" type="text" maxlength="40" required>
				</div>
				<div class="form_input_wrapper">
					<label for="patronymic">Отчетсво</label>
					<input id="patronymic" name="patronymic" type="text" maxlength="40" required>
				</div>
				<div class="form_input_wrapper">
					<label for="email">Электронная почта</label>
					<input id="email" name="email" type="email" maxlength="40" required>
				</div>
				<div class="form_input_wrapper">
					<label for="phone">Телефон</label>
					<input type="text" id="phone" name="phone" pattern="[0-9]{11}" maxlength="11" required>
				</div>
				<button class="form_signup">Записаться</button>
			</div>
		</form>
	</div>
</dialog>
<div class="container">
	<div class="tour_page_info">
		<img src="<?=$tour["img_tour"]?>" alt="Фото">
		<div class="tour_page_text">
			<div class="tour_page_title"><?=$tour["name_tour"]?></div>
			<div class="tour_info_line">
				<div>
					<div class="tour_page_text_elem">
						<div class="tour_page_text_title">Цена</div>
						<div class="tour_page_text_value"><?=$tour["price_tour"]?>₽</div>
					</div>
					<div class="tour_page_text_elem">
						<div class="tour_page_text_title">Длительность</div>
						<div class="tour_page_text_value"><?=$tour["duration_tour"]?></div>
					</div>
				</div>
				<div>
					<div class="tour_page_text_elem">
						<div class="tour_page_text_title">Дата начала</div>
						<div class="tour_page_text_value"><?=$tour["datestart_tour"]?></div>
					</div>
					<div class="tour_page_text_elem">
						<div class="tour_page_text_title">Время начала</div>
						<div class="tour_page_text_value"><?=$tour["timestart_tour"]?></div>
					</div>
				</div>
			</div>
			<div class="tour_page_text_elem">
				<div class="tour_page_text_title">Описание</div>
				<div class="tour_page_text_value"><?=$tour["desc_tour"]?></div>
			</div>
			<div class="tour_info_line">
				<div class="tour_page_text_elem">
					<div class="tour_page_text_title">Возраст</div>
					<div class="tour_page_text_value"><?=$tour["age_tour"]?></div>
				</div>
				<div class="tour_page_text_elem">
					<div class="tour_page_text_title">Локация</div>
					<div class="tour_page_text_value"><?=$tour["name_typetour"]?></div>
				</div>
			</div>
			<div>
				<button class="signup_tour">Записаться на путешествие</button>
			</div>
		</div>
	</div>
	<div class="touroperator_space">
		<div class="touroperator_title">Туроператор</div>
		<div class="touroperator_line">
			<div class="touroperator_photo">
				<img src="<?=$tour["img_touroperator"]?>" alt="Туроператор">
			</div>
			<div class="touroperator_info">
				<div class="tourop_name"><?=$tour["surname_touroperator"] . ' ' . $tour["name_touroperator"] . ' ' . $tour["patronymic_touroperator"]?></div>
				<div class="tourop_info_block"><?=$tour["desc_touroperator"]?></div>
				<div class="tourop_info_block" style="font-weight: 600;"><?=$tour["phone_touroperator"]?></div>
			</div>
		</div>
	</div>
	<div class="tour_stops">
		<div class="tour_stops_title">Во время этого путешествия вы посетите</div>
		<?
		foreach($stops as $stop) {
			echo "
			<div class='stop_block'>
				<div class='stop_line'>
					<div class='stop_img'>
						<img src='$stop[img_stop]' alt='$stop[name_stop]'>
					</div>
					<div class='stop_desc'>
						<div class='stop_title'>$stop[name_stop]</div>
						$stop[desc_stop]
					</div>
				</div>
			</div>
			";
		}
		?>
	</div>
</div>
<script>
	$(".signup_tour").click(() => {
		document.getElementById("dialog_signup").showModal();
	});
	$("#dialog_signup").click((event) => {
        if (event.target.id !== "dialog_signup")
            return;

        const rect = event.target.getBoundingClientRect();

        const clickedInDialog = (
            rect.top <= event.clientY &&
            event.clientY <= rect.top + rect.height &&
            rect.left <= event.clientX &&
            event.clientX <= rect.left + rect.width
        );

        if (clickedInDialog === false)
            event.target.close();
    });
	$("#dialog_signup_close").click(() => {
		document.getElementById("dialog_signup").close();
	});
	$("#form_signup").submit((event) => {
		event.preventDefault();
		var setdata = $("#form_signup").serializeArray();
		setdata.push({ name: 'tour_id', value: '<?=$id?>'});
		$("#form_load").fadeOut(function() {
			$.post('include/signup.php', setdata, function(data) {
				$('#form_load').html(data);
				$("#form_load").fadeIn();
				$("#form_load").css({"font-size" : "24px", "color" : "#000000", "font-weight" : "600"});
			});
		});
	});
</script>