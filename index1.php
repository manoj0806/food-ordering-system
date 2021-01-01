<html>
    <head>
        <title>Food-Order-System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
        <link href='custom.css' rel='stylesheet' type='text/css'>
        <?php include('navbar.php'); ?>
    </head>
    <body style="background-color:#203647">

        <div class="container">

            <div class="row">

                <div class="col-lg-8 col-lg-offset-2">

                    <h1 style="font-size:6rem;background-color:#007CC7;color:#2f3640"><center>Feedback<center></h1>

                    <p class="lead">Please fill the customer's feedback</p>


                    <form id="feedback-form" method="post" role="form">

                        <div class="messages"></div>

                        <div class="controls">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_customer" style="color:white;font-size:2rem">Customer *</label>
                                        <input id="form_customer" type="text" name="customer" class="form-control" placeholder="Please enter customer's name*" required="required" data-error="Firstname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_dish" style="color:white;font-size:2rem">Dish *</label>
                                        <input id="form_dish" type="text" name="dish" class="form-control" placeholder="Please enter the dish *" required="required" data-error="Dish name is required">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_email"style="color:white;font-size:2rem">Email*</label>
                                        <input id="form_email" type="email" name="email" class="form-control" placeholder="Please enter email*" required="required" data-error="provide valid email address">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_phone"style="color:white;font-size:2rem">Phone</label>
                                        <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Please enter phone">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form_message"style="color:white;font-size:2rem">Ratings *</label>
                                        <textarea id="form_message" name="message" class="form-control" placeholder="Rate us between 0-10" *" rows="4" required="required" data-error="Please,leave us a Rating."></textarea>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <input type="submit" name="ok" class="btn btn-success btn-send" value="Send message">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="text-muted"><strong>*</strong> These fields are required.</p>
                                </div>
                            </div>
                        </div>

                    </form>
            <?php 
            if(isset($_POST['ok'])){
                include_once 'function1.php';
                $obj=new Contact();
                $res=$obj->feedback($_POST);
                if($res==true){
                    echo "<script>alert('Query successfully Submitted.Thank you')</script>";
                }else{
                    echo "<script>alert('Successfully submitted the feedback.')</script>";
                }
            }
            ?>

                </div><!-- /.8 -->

            </div> <!-- /.row-->

        </div> <!-- /.container-->

        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="validator.js"></script>
        <script src="contact.js"></script>
    </body>
</html>
