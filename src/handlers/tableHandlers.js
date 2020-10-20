const {
	getApprovedPost,
	addThingsToDo,
	addBusiness,
	addExperiences,
	updateApproval,
	deletePost,
	getUnapproved,
} = require("../model/postgresModels");

function getCountrySpecificContent(req, res, next) {
	const countryID = req.params.id;
	const table = req.params.table;
	getApprovedPost(countryID, table)
		.then(results => {
			return res.status(200).send(results);
		})
		.catch(next);
}

function addThingsToDoHandler(req, res, next) {
	const body = req.body;
	body.country_id = req.params.id;
	addThingsToDo(body)
		.then(result => res.status(200).send(result))
		.catch(next);
}

function addExperiencesHandler(req, res, next) {
	const body = req.body;
	body.country_id = req.params.id;
	addExperiences(body)
		.then(result => res.status(200).send(result))
		.catch(next);
}
function addBusinessHandler(req, res, next) {
	const body = req.body;
	body.country_id = req.params.id;
	addBusiness(body)
		.then(result => res.status(200).send(result))
		.catch(next);
}

//////// ADMIN ENDPOINTS /////////

function getUnapprovedPostsHandler(req, res, next) {
	const table = req.params.table;
	getForApproval(table)
		.then(result => {
			return res.status(200).send(result);
		})
		.catch(next);
}

function approvePostHandler(req, res, next) {
	const id = req.params.postId;
	const table = req.params.table;
	updateApproval(table, id).then(() => {
		res.status(204).send();
	});
}

function deletePostHandler(req, res, next) {
	const id = req.params.postId;
	const table = req.params.table;
	deletePost(table, id)
		.then(() => {
			res.status(204).send();
		})
		.catch(next);
}

module.exports = {
	getUnapprovedPostsHandler,
	getCountrySpecificContent,
	addThingsToDoHandler,
	addExperiencesHandler,
	addBusinessHandler,
	deletePostHandler,
	approvePostHandler,
};
