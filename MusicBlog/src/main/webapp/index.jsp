<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp"%>

<title>Note Taker</title>
</head>
<body>
	<%@include file="navbar.jsp"%>


	<div class="container">

		<h2>Top Songs</h2>


		<div class="container">


			<div class="table-responsive" id="sailorTableArea">
				<table id="sailorTable" class="table table-striped table-bordered"
					width="100%">

					<thead>
						<tr>
							<th>First name</th>
							<th>Last name</th>
							<th>Date Of Released</th>
							<th>Office</th>
							<th>Age</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tiger</td>
							<td>Nixon</td>

							<td>$320,800</td>
							<td>5421</td>
							<td>t.nixon@datatables.net</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>

		<br>
		<h2>Top Artist</h2>
		<div class="container">
			<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery(" from Artist");
				List<Artist> list = q.list();
				for (Artist artist : list) {
			%>
			<div class="table-responsive" id="sailorTableArea">
				<table id="sailorTable" class="table table-striped table-bordered"
					width="100%">

					<thead>
						<tr>
							<th>First name</th>
							<th>Last name</th>
							<th>Date Of Released</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><%=artist.getTitle()%></td>
							<td><%=artist.getBirthday()%></td>
							<td><%=artist.getContent()%></td>
						</tr>
					</tbody>
				</table>

			</div>

		</div>
		<%
			}
			s.close();
		%>
	</div>
</body>
</html>