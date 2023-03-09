<h1>Отчёт по работе</h1>
<h2>Пункты, по которым выполнялось задание</h2>
<h3>1. Время работы после написания основной части:</h3><b>
        <h4>вычисление на cpu, 128*128</h4><b>
        <img src = 'Screenshot from 2023-03-08 21-03-03.png'></img><b>
        <h4>вычисление на gpu, 128*128</h4><b>
        <img src = ''></img><br>
        <p>При попытке посчитать 1024*1024 было понятно, что это займёт слишком много времени</p>
<h3>2. Изменение программы</h3>
<p>Для изменения улучшения работы моей программы я добавил следующий код:</p>
<code>#pragma acc enter data copyin(mas [0:n] [0:m], error_c) create(local_arr[n][m])</code><br>
<code>#pragma acc parallel loop present(mas[0:n][0:m])</code><br>
<code> #pragma acc update device(error_c)</code><br>
<code>#pragma acc parallel loop collapse(2) present(mas[0:n][0:m]) reduction(max : error_c)</code><br>

<h3>3. Измерение для разного объёма матриц(Двумерных массивов)</h3>
        <p>После измениния программы стало возможным запустить её версию с матрицей 1024*1024</p>
        <h4>Различное время работы:</h4>
        <p>1. Для 128*128</p>
        <img src = 'Screenshot from 2023-03-09 19-25-17.png'></img><br>
        <p>2. Для 256*256</p>
        <img src = 'Screenshot from 2023-03-09 19-56-40.png'></img><br>
        <p>3. Для 512*512</p>
        <img src = 'Screenshot from 2023-03-09 20-07-46.png'></img><br>
        <p>4. Для 1024*1024</p>
        <img src = 'Screenshot from 2023-03-09 20-04-42.png'></img><br>

<h3>4. Выводы</h3>
