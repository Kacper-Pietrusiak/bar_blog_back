import {Router} from "express";
import {PostRecord} from "../records/post.record";

export const postRouter = Router()

postRouter
    .get('/', async (req, res) => {
        const allDrinks = await PostRecord.getAll()

        res.json({
           allDrinks,
        });
    })
    .get('/:drinkId', async (req, res) => {
        const drink = await PostRecord.getOne(req.params.drinkId)

        console.log(drink)
        res.json(drink);
    })
    .post('/add', async (req, res) => {
        const post = new PostRecord(req.body)

        console.log(post)
        await post.insert();
        res.json(post)
    })